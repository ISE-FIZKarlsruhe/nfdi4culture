# Ontology Structure

![Basic Structure](assets/core-structure.jpg)

The core structure of CTO consists of four main elements. `schema:DataFeed` represents a data feed in the Research Information Graph (RIG). This data feed is created in the Culture Information Portal using TYPO3 and its LOD extension. The metadata associated with the data feed include contact persons, export formats, licenses, and related projects and organizations. For each item (`cto: source item`) in the data feed, a permanent ARK (`schema:DataFeedItem`) is created as its stable reference entity. The `schema:DataFeedItem` does not contain content-related information about the source item, aside from a license issued by NFDI4Culture and the creation and modification dates. This stable reference entity functions as a persistent identifier in the knowledge graph, remaining valid even if the content of the source item is changed or deleted. The main content-related metadata are associated with `cto: source item`. This includes associated media, related entities and their identifiers in external vocabularies, temporal data, and subject-area-specific metadata, such as musical incipits. Furthermore, it is possible to express which real-world entity `cto: source item` is about. These entities could be sculptures, buildings, persons, books, etc. However, since this information is often not provided in the research data, this aspect currently serves as a proof of concept and is only materialized when clearly stated by the data providers.






## Reused Ontologies



## Key Concepts

### Classes

### Properties


