# MeineSpeziesExtension - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MeineSpeziesExtension**

## Extension: MeineSpeziesExtension 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/simone/StructureDefinition/MeineSpeziesExtension | *Version*:0.0.1 |
| Draft as of 2026-02-10 | *Computable Name*:MeineSpeziesExtension |

Erweiterung zur Angabe der Spezies eines Patienten

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md)
* Examples for this Extension: [Patient/PatientBeispiel](Patient-PatientBeispiel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MeineSpeziesExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MeineSpeziesExtension.csv), [Excel](StructureDefinition-MeineSpeziesExtension.xlsx), [Schematron](StructureDefinition-MeineSpeziesExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MeineSpeziesExtension",
  "url" : "http://gefyra.info/simone/StructureDefinition/MeineSpeziesExtension",
  "version" : "0.0.1",
  "name" : "MeineSpeziesExtension",
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
  "description" : "Erweiterung zur Angabe der Spezies eines Patienten",
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
        "definition" : "Erweiterung zur Angabe der Spezies eines Patienten"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://gefyra.info/simone/StructureDefinition/MeineSpeziesExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.ufp/ValueSet/species"
        }
      }
    ]
  }
}

```
