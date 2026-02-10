# MeineQuadrantenExtension - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MeineQuadrantenExtension**

## Extension: MeineQuadrantenExtension 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/simone/StructureDefinition/MeineQuadrantenExtension | *Version*:0.0.1 |
| Draft as of 2026-02-10 | *Computable Name*:MeineQuadrantenExtension |

Extension zur Angabe des Quadranten an einer Adresse

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md)
* Examples for this Extension: [Patient/PatientBeispiel](Patient-PatientBeispiel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MeineQuadrantenExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MeineQuadrantenExtension.csv), [Excel](StructureDefinition-MeineQuadrantenExtension.xlsx), [Schematron](StructureDefinition-MeineQuadrantenExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MeineQuadrantenExtension",
  "url" : "http://gefyra.info/simone/StructureDefinition/MeineQuadrantenExtension",
  "version" : "0.0.1",
  "name" : "MeineQuadrantenExtension",
  "status" : "draft",
  "date" : "2026-02-10T10:57:19+00:00",
  "publisher" : "Gefyra GmbH",
  "contact" : [
    {
      "name" : "Gefyra GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://gefyra.info/"
        }
      ]
    }
  ],
  "description" : "Extension zur Angabe des Quadranten an einer Adresse",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Address"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "definition" : "Extension zur Angabe des Quadranten an einer Adresse"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://gefyra.info/simone/StructureDefinition/MeineQuadrantenExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://gefyra.info/simone/ValueSet/MeinQuadrantenValueSet"
        }
      }
    ]
  }
}

```
