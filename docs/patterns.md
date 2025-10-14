

![Incipit pattern](D2/incipit-pattern.d2)

``` sparql linenums="1" title="Query"
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX schema: <http://schema.org/>
PREFIX cto: <https://nfdi4culture.de/ontology/>
PREFIX nfdicore: <https://nfdi.fiz-karlsruhe.de/ontology/>


SELECT DISTINCT ?person ?personLabel ?identifier
WHERE {
  ?person rdf:type nfdicore:NFDI_0000004 .
  ?person rdfs:label ?personLabel .
  ?person nfdicore:NFDI_0001006 ?identifier .
} 
```
