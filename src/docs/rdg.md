---
hide:
  - toc
---

# Research Data Graph

## Ontology Sample Applications

Some examples of applying the RDG Ontology to items from architecture, art history, musicology, media studies and the performing arts.

<script src="https://cdn.jsdelivr.net/npm/d3@7"></script>
<div id="svgContainer" style="width: 100%; height: 40vh; overflow: hidden; border: 1px solid #ddd" ></div>
<div class="text-end" style="color: #777; font-size: 80%; font-style: italic">zoom in/out with mouse scrollwheel or pinch-zoom</div>
<script src="overview_script.js"></script>

## Architecture

```turtle
@prefix cto: <https://nfdi4culture.de/ontology#> .
@prefix n4c: <https://nfdi4culture.de/id/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema: <http://schema.org/> .
@prefix nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/> .

###  https://nfdi.fiz-karlsruhe.de/id/ark:/60538/14384775308556492773
<https://nfdi.fiz-karlsruhe.de/id/ark:/60538/14384775308556492773> rdf:type owl:NamedIndividual ,
                                                                            cto:Item ;
                                                                   nfdicore:license <https://www.deutsche-digitale-bibliothek.de/lizenzen/rv-fz> ;
                                                                   nfdicore:publisher n4c:E1876 ;
                                                                   schema:image <http://fotothek.biblhertz.it/bh/2048px/bh003277.jpg> ,
                                                                                             <http://fotothek.biblhertz.it/bh/2048px/bh590824.jpg> ,
                                                                                             <http://fotothek.biblhertz.it/bh/2048px/bh590962.jpg> ;
                                                                   schema:url <http://foto.biblhertz.it/obj08016650> ;
                                                                   cto:gnd <http://d-nb.info/gnd/129657379> ,
                                                                           <http://d-nb.info/gnd/4045895-7> ;
                                                                   cto:itemType <http://d-nb.info/gnd/4045895-7> ;
                                                                   cto:relatedPerson <http://d-nb.info/gnd/129657379> ;
                                                                   cto:sourceFile <https://api.deutsche-digitale-bibliothek.de/items/7YR6M735EGBHOOGHMZDE6HS4DUDOVEW2/source/record> ;
                                                                   cto:itemTypeLiteral "Grabmal"@de ;
                                                                   rdfs:label "Grabmonument des Kardinals Alano Coetivy"@de .
```

## Art History

```turtle
@prefix cto: <https://nfdi4culture.de/ontology#> .
@prefix n4c: <https://nfdi4culture.de/id/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema: <http://schema.org/> .
@prefix nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/> .

###  https://corpusvitrearum.de/id/F4485
<https://corpusvitrearum.de/id/F4485> rdf:type owl:NamedIndividual ,
                                               cto:Item ;
                                      nfdicore:license <https://creativecommons.org/licenses/by-nc/4.0/> ;
                                      nfdicore:publisher n4c:E1834 ;
                                      schema:image <https://corpusvitrearum.de/typo3temp/cvma/_processed_/pics/medium/4485.jpg> ;
                                      schema:url <https://corpusvitrearum.de/id/F4485> ;
                                      cto:aat <http://vocab.getty.edu/page/aat/300263722> ;
                                      cto:geonames <http://sws.geonames.org/11427995> ;
                                      cto:iconclass <https://iconclass.org/11G21> ;
                                      cto:itemType <http://vocab.getty.edu/page/aat/300263722> ;
                                      cto:relatedLocation <http://sws.geonames.org/11427995> ;
                                      cto:subjectConcept <https://iconclass.org/11G21> ;
                                      cto:approximatePeriod "vor 1397" ;
                                      cto:creationPeriod "1380-01-01T00:00:00/1400-12-31T23:59:59" ;
                                      cto:itemTypeLiteral "Glaskunst (Objektgattung)"@de ;
                                      rdfs:label "Engel mit Dudelsack"@de .
```

## Media studies

```turtle
@prefix cto: <https://nfdi4culture.de/ontology#> .
@prefix n4c: <https://nfdi4culture.de/id/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema: <http://schema.org/> .
@prefix nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/> .

###  https://nfdi.fiz-karlsruhe.de/id/ark:/60538/6077816772506314614
<https://nfdi.fiz-karlsruhe.de/id/ark:/60538/6077816772506314614> rdf:type owl:NamedIndividual ,
                                                                           schema:MediaObject ,
                                                                           cto:Item ;
                                                                  nfdicore:publisher <https://d-nb.info/gnd/2002498-8> ,
                                                                                     n4c:E1979 ;
                                                                  schema:image <https://heidicon.ub.uni-heidelberg.de/api/v1/objects/uuid/a135cff7-832f-42d0-9385-8306bb297568/file/id/200688/file_version/name/small/disposition/inline> ;
                                                                  schema:url <https://heidicon.ub.uni-heidelberg.de/detail/729667> ;
                                                                  cto:gnd <https://d-nb.info/gnd/127825118> ,
                                                                          <https://d-nb.info/gnd/4021845-4> ,
                                                                          <https://d-nb.info/gnd/4029670-2> ,
                                                                          <https://d-nb.info/gnd/4127793-4> ,
                                                                          <https://d-nb.info/gnd/4135144-7> ;
                                                                  cto:iiifImageAPI <https://heidicon.ub.uni-heidelberg.de/iiif/2/%3A200688> ;
                                                                  cto:itemType <https://d-nb.info/gnd/4021845-4> ,
                                                                               <https://d-nb.info/gnd/4029670-2> ,
                                                                               <https://d-nb.info/gnd/4135144-7> ;
                                                                  cto:relatedLocation <https://d-nb.info/gnd/4127793-4> ;
                                                                  cto:relatedPerson <https://d-nb.info/gnd/127825118> ;
                                                                  cto:sourceFile <https://heidicon.ub.uni-heidelberg.de/api/v1/plugin/base/oai/oai?verb=GetRecord&metadataPrefix=lido&identifier=oai:heidicon.ub.uni-heidelberg.de:a135cff7-832f-42d0-9385-8306bb297568> ;
                                                                  cto:creationPeriod "1888" ;
                                                                  cto:itemTypeLiteral "Fliegende Blätter"@de ;
                                                                  rdfs:label "Gedichte eines Kleinstädters"@de .

```

## Musicology

```turtle
@prefix cto: <https://nfdi4culture.de/ontology#> .
@prefix n4c: <https://nfdi4culture.de/id/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema: <http://schema.org/> .
@prefix nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/> .
@prefix mo: <http://purl.org/ontology/mo/> .

###  https://rism.online/sources/201001959
<https://rism.online/sources/201001959> rdf:type owl:NamedIndividual ,
                                                 cto:Item ,
                                                 schema:MusicComposition ;
                                        nfdicore:license <http://creativecommons.org/licenses/by/3.0/de> ;
                                        nfdicore:publisher <https://rism.online/> ;
                                        mo:lyrics cto:So_sei_gegrüßt_viel_tausendmal ;
                                        schema:url <https://rism.online/sources/201001959> ;
                                        cto:itemType <https://rism.online/subjects/25227> ,
                                                     <https://rism.online/subjects/25460> ;
                                        cto:relatedPerson <https://rism.online/people/131206> ;
                                        cto:rism <https://rism.online/people/131206> ,
                                                 <https://rism.online/subjects/25227> ,
                                                 <https://rism.online/subjects/25460> ;
                                        cto:approximatePeriod "1890-1910 (19/20)" ;
                                        cto:creationPeriod "1890-1910 (19/20)" ;
                                        cto:subjectConceptLiteral "Coro" ,
                                                                  "Coro S (2), Coro T, Coro B" ;
                                        rdfs:label "Frühlingsgruß"@de .


###  https://rism.online/sources/201001959/incipits/1.1.1
<https://rism.online/sources/201001959/incipits/1.1.1> rdf:type owl:NamedIndividual ,
                                                                cto:Incipit ;
                                                       cto:incipitOf <https://rism.online/sources/201001959> ;
                                                       cto:clef "G-2" ;
                                                       cto:keySignature "xF" ;
                                                       cto:pattern "4'D/8.6GB4AG/8.6''EC2'A/4.''D8'BAG/4BA" ;
                                                       cto:timeSignature "3/4" .
```

## Performing Arts

```turtle
@prefix cto: <https://nfdi4culture.de/ontology#> .
@prefix n4c: <https://nfdi4culture.de/id/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema: <http://schema.org/> .
@prefix nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

###  http://slod.fiz-karlsruhe.de/labw-2-2599390
<http://slod.fiz-karlsruhe.de/labw-2-2599390> rdf:type owl:NamedIndividual ,
                                                       cto:Item ;
                                              nfdicore:license <https://creativecommons.org/licenses/by/2.0/> ;
                                              nfdicore:publisher <http://slod.fiz-karlsruhe.de/labw-2-2599390> ;
                                              schema:image <http://slod.fiz-karlsruhe.de/images/slod/2-2599390-1.jpg> ,
                                                                        <http://slod.fiz-karlsruhe.de/images/slod/2-2599390-2.jpg> ,
                                                                        <http://slod.fiz-karlsruhe.de/images/slod/2-2599390-3.jpg> ;
                                              schema:url <https://slod.fiz-karlsruhe.de/labw-2-2599390> ;
                                              cto:gnd <http://d-nb.info/gnd/4316770-6> ,
                                                      <https://d-nb.info/gnd/116463619> ,
                                                      <https://d-nb.info/gnd/118613723> ;
                                              cto:relatedPerson <http://www.wikidata.org/entity/Q55638867> ,
                                                                <http://www.wikidata.org/entity/Q692> ,
                                                                <https://d-nb.info/gnd/116463619> ,
                                                                <https://d-nb.info/gnd/118613723> ;
                                              cto:subjectConcept <http://d-nb.info/gnd/4316770-6> ,
                                                                 <http://www.wikidata.org/entity/Q221211> ;
                                              cto:wikidata <http://www.wikidata.org/entity/Q221211> ,
                                                           <http://www.wikidata.org/entity/Q55638867> ,
                                                           <http://www.wikidata.org/entity/Q692> ;
                                              cto:creationDate "1923-03-11"^^xsd:date ;
                                              cto:subjectConceptLiteral "Schauspiel"@de ;
                                              rdfs:label "Was ihr wollt (William Shakespeare)"@en .
```
