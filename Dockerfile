FROM openjdk:jre AS widoco

RUN wget https://github.com/dgarijo/Widoco/releases/download/v1.4.25/widoco-1.4.25-jar-with-dependencies_JDK-11.jar 

COPY ./cto.owl /data/ontology.owl

RUN java -jar widoco-1.4.25-jar-with-dependencies_JDK-11.jar -ontFile /data/ontology.owl -outFolder public -uniteSections -includeAnnotationProperties -lang en-de -getOntologyMetadata -noPlaceHolderText -rewriteAll -webVowl

FROM ghcr.io/epoz/shmarql:latest

# MkDocs D2 plugin 
RUN wget -qO- https://d2lang.com/install.sh | sh -s -- && d2 version
RUN pip install --no-cache-dir mkdocs-d2-plugin

COPY docs /src/docs
COPY mkdocs.yml a.yml
RUN python -m shmarql docs_build -f a.yml

RUN mkdir /src/site/ontology
COPY --from=widoco /public/doc /src/site/ontology
RUN ls -l /src/site/ontology
RUN cp /src/site/ontology/index-en.html /src/site/ontology/index.html

