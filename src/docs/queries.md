## Term count

```sparql
# counts  all defined terms in the triple store

PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>

SELECT (NOW() AS ?date) (xsd:integer(COUNT(?term)) AS ?count)
WHERE {
    ?term a <http://schema.org/DefinedTerm> .
}
```

## Instance count

```sparql
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>

SELECT (NOW() AS ?date) ?type (xsd:integer(COUNT(?s)) AS ?count)
WHERE {
  ?subject a ?type .
}
GROUP BY ?type
ORDER BY ?type
```

## Resource count

```sparql
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>

SELECT (NOW() AS ?date) (xsd:integer(COUNT(DISTINCT ?resource)) AS ?count)
WHERE {
  ?resource ?p ?o .
}
```

## Triple count

```sparql
# counts all triples in a triple store and returns
# the total number together with a current timestamp

PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>

SELECT (NOW() AS ?date) (xsd:integer(COUNT(*)) AS ?count) WHERE {
   ?s ?p ?o
}

```
