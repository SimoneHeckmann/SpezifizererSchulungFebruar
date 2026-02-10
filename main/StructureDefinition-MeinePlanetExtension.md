# MeinePlanetExtension - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MeinePlanetExtension**

## Extension: MeinePlanetExtension 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/simone/StructureDefinition/MeinePlanetExtension | *Version*:0.0.1 |
| Draft as of 2026-02-10 | *Computable Name*:MeinePlanetExtension |

Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md)
* Examples for this Extension: [Patient/PatientBeispiel](Patient-PatientBeispiel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MeinePlanetExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MeinePlanetExtension.csv), [Excel](StructureDefinition-MeinePlanetExtension.xlsx), [Schematron](StructureDefinition-MeinePlanetExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MeinePlanetExtension",
  "url" : "http://gefyra.info/simone/StructureDefinition/MeinePlanetExtension",
  "version" : "0.0.1",
  "name" : "MeinePlanetExtension",
  "status" : "draft",
  "date" : "2026-02-10T08:26:21+00:00",
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
  "description" : "Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen",
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
      "expression" : "Element"
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
        "definition" : "Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://gefyra.info/simone/StructureDefinition/MeinePlanetExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
