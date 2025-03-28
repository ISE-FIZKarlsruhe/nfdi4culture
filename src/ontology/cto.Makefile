## Customize Makefile settings for cto
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

#################################################################
## import entire nfdicore
#################################################################
#$(IMPORTDIR)/nfdicore_import.owl: $(MIRRORDIR)/nfdicore.owl 
#	if [ $(IMP) = true ]; then cp $(MIRRORDIR)/nfdicore.owl $(IMPORTDIR)/#nfdicore_import.owl; fi


#################################################################
## import schema custom
#################################################################
$(IMPORTDIR)/schema_import.owl: $(MIRRORDIR)/schema.owl $(IMPORTDIR)/schema_terms_combined.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/schema_terms_combined.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## import dcterms custom
#################################################################

$(IMPORTDIR)/dcterms_import.owl: $(MIRRORDIR)/dcterms.owl $(IMPORTDIR)/dcterms_terms_combined.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/dcterms_terms_combined.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## import skos custom
#################################################################

$(IMPORTDIR)/skos_import.owl: $(MIRRORDIR)/skos.owl $(IMPORTDIR)/skos_terms_combined.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/skos_terms_combined.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi
