# Domain Examples
The following modeling examples illustrate how research data can be represented using the CTO, with respect to the subject areas of performing arts, musicology, media studies, art history, and architecture. They also demonstrate the alignment of CTO with NFDIcore and the Basic Formal Ontology (BFO 2020).

## Legend 
![Legend](assets/legend.png)


## Performing Arts
![Performing Arts Example](assets/pa-example.jpg)

## Musicology
![Musicology Example](assets/musicology-example.jpg)

```mermaid

stateDiagram

  direction BT

#style definitions
  classDef clazz fill:lightgrey,color:white
  classDef individual font-size:small

#styling of classes

  class bfo_occurrent clazz  
  class bfo_entity clazz
  class bfo_continuant clazz
  
#relations

  bfo_occurrent --> bfo_entity: subClassOf 
#  bfo_continuant --> bfo_entity: subClassOf 
#  bfo_process --> bfo_occurrent: subClassOf 
#  bfo_temporal_region --> bfo_occurrent: subClassOf 
#  bfo_one_dimensional --> bfo_temporal_region: subClassOf 
#  bfo_two_dimensional --> bfo_temporal_region: subClassOf 

```

```mermaid
stateDiagram
  direction BT
  classDef clazz fill:lightgrey,color:white;

  state "cto:CTO_0001005 (source item)" as CTO_SourceItem 
  class CTO_SourceItem clazz
  state "nfdicore:NFDI_0000003 (organization)" as NFDI_organization
  class NFDI_organization clazz
  state "schema:DataFeed" as SCHEMA_DataFeed
  class SCHEMA_DataFeed clazz
  state "cto:CTO_0001024 (incipit)" as CTO_Incipit
  class CTO_Incipit clazz 
  state "RISM Online" as org_rism
  state "E5313" as feed_e5313 
  state "RISM Resource 201001959" as si_201001959 
  state "201001959 incipit 1.1.1" as inc_1_1_1

  state "A''C/'B''D'BA/2G4BA/G-B''D/G4-2-/" as PATTERN_CLASS
  class PATTERN_CLASS
  state "C/" as TIMESIG 
  class TIMESIG 


  org_rism --> NFDI_organization:a
  si_201001959 --> CTO_SourceItem:a
  inc_1_1_1 --> CTO_Incipit:a

  
  feed_e5313 --> SCHEMA_DataFeed:a
  si_201001959 --> inc_1_1_1:CTO_has incipit
  si_201001959 --> org_rism: NFDI_publishedBy
  si_201001959 --> feed_e5313:CTO_isReferencedIn
  inc_1_1_1 --> PATTERN_CLASS:CTO_hasPattern
  inc_1_1_1 --> key_G:CTO_hasKey
  inc_1_1_1 --> clef_C1:CTO_hasClef
  inc_1_1_1 --> keysig_xF:CTO_hasKeySignature
  inc_1_1_1 --> TIMESIG:CTO_hasIncipitTimeSignature

  class RISM_201001959
  class RISM_inc_1_1_1
  class RISM-online
  class E5313
  class G
  class C1
  state "xF" as keysig_xF 

```