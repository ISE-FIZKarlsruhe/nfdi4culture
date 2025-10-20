## Customize Makefile settings for cto
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

MIR ?= true
IMP ?= false
PAT ?= false
ROBOT_ENV ?= ROBOT_JAVA_ARGS=-Xmx8G
.EXPORT_ALL_VARIABLES:

$(MIRRORDIR)/schema.owl:
	@mkdir -p $(MIRRORDIR)
	curl -L -o $@ https://raw.githubusercontent.com/schemaorg/schemaorg/refs/tags/v28.1-release/data/releases/28.1/schemaorg.owl

#################################################################
## import entire nfdicore
#################################################################
#$(IMPORTDIR)/nfdicore_import.owl: $(MIRRORDIR)/nfdicore.owl 
#	if [ $(IMP) = true ]; then cp $(MIRRORDIR)/nfdicore.owl $(IMPORTDIR)/#nfdicore_import.owl; fi


#################################################################
## import schema custom
#################################################################
$(IMPORTDIR)/schema_import.owl: $(MIRRORDIR)/schema.owl 
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/schema_terms.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi


#################################################################
## import skos custom
#################################################################

$(IMPORTDIR)/skos_import.owl: $(MIRRORDIR)/skos.owl 
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/skos_terms.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## import skos custom OLD!
#################################################################

#$(IMPORTDIR)/skos_import.owl: $(MIRRORDIR)/skos.owl $(IMPORTDIR)/#skos_terms_combined.txt
#	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
#		extract -T $(IMPORTDIR)/skos_terms_combined.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
#		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## import schema custom OLD!
#################################################################
#$(IMPORTDIR)/schema_import.owl: $(MIRRORDIR)/schema.owl $(IMPORTDIR)/#schema_terms_combined.txt
#	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
#		extract -T $(IMPORTDIR)/schema_terms_combined.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
#		$(ANNOTATE_CONVERT_FILE); fi


#################################################################
## release modifications
#################################################################


#################################################################
## release base version (modification)
#################################################################

## here we need "remove --base-iri $(URIBASE)/""  instead of "remove --base-iri $(URIBASE)/NFDICORE"  as suggested in the generated main file

# base: A version of the ontology that does not include any externally imported axioms.
$(ONT)-base.owl: $(EDIT_PREPROCESSED) $(OTHER_SRC) $(IMPORT_FILES)
	$(ROBOT_RELEASE_IMPORT_MODE) \
	reason --reasoner ELK --equivalent-classes-allowed asserted-only --exclude-tautologies structural --annotate-inferred-axioms False \
	relax \
	reduce -r ELK \
	remove --base-iri $(URIBASE)/ --axioms external --preserve-structure false --trim false \
	$(SHARED_ROBOT_COMMANDS) \
	annotate --link-annotation http://purl.org/dc/elements/1.1/type http://purl.obolibrary.org/obo/IAO_8000001 \
		--ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) \
		--output $@.tmp.owl && mv $@.tmp.owl $@





#############################################################################
# additional annotations to the release artefacts
#############################################################################

CITATION="'Tabea Tietz, Jörg Waitelonis, Oleksandra Bruns, Etienne Posthumus, Harald Sack. NFDI4culture Ontology. Revision: v$(VERSION). Retrieved from: https://nfdi4culture.de/ontology/$(VERSION)'"

ALL_ANNOTATIONS=--ontology-iri https://nfdi4culture.de/ontology -V https://nfdi4culture.de/ontology/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
	--link-annotation owl:priorVersion https://nfdi4culture.de/ontology/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../cto.owl $(ALL_ANNOTATIONS) --output ../../cto.owl && \
	$(ROBOT) annotate --input ../../cto.ttl $(ALL_ANNOTATIONS) --output ../../cto.ttl && \
	$(ROBOT) annotate --input ../../cto-full.owl $(ALL_ANNOTATIONS) --output ../../cto-full.owl && \
	$(ROBOT) annotate --input ../../cto-full.ttl $(ALL_ANNOTATIONS) --output ../../cto-full.ttl && \
	$(ROBOT) annotate --input ../../cto-base.owl $(ALL_ANNOTATIONS) --output ../../cto-base.owl && \
	$(ROBOT) annotate --input ../../cto-base.ttl $(ALL_ANNOTATIONS) --output ../../cto-base.ttl 





