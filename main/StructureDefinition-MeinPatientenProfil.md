# MeinPatientenProfil - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MeinPatientenProfil**

## Resource Profile: MeinPatientenProfil 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/simone/StructureDefinition/MeinPatientenProfil | *Version*:0.0.1 |
| Draft as of 2026-02-10 | *Computable Name*:MeinPatientenProfil |

 
Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten. 

### Eine Überschrift

Viel Text

### Noch eine Überschrift

Noch mehr Text

**Usages:**

* Examples for this Profile: [Patient/PatientBeispiel](Patient-PatientBeispiel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MeinPatientenProfil)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MeinPatientenProfil.csv), [Excel](StructureDefinition-MeinPatientenProfil.xlsx), [Schematron](StructureDefinition-MeinPatientenProfil.sch) 

### Notes:

### Ein zusätzlicher Hinweis

Viel Text

### Noch ein zusätzlicher Hinweis

Noch mehr Text



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MeinPatientenProfil",
  "url" : "http://gefyra.info/simone/StructureDefinition/MeinPatientenProfil",
  "version" : "0.0.1",
  "name" : "MeinPatientenProfil",
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
  "description" : "Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.extension:spezies",
        "path" : "Patient.extension",
        "sliceName" : "spezies",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://gefyra.info/simone/StructureDefinition/MeineSpeziesExtension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "min" : 1,
        "fixedBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "Geburtsdatum",
        "comment" : "Ist ein Pflichtfeld weil...",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension",
        "path" : "Patient.address.extension",
        "min" : 2
      },
      {
        "id" : "Patient.address.extension:planet",
        "path" : "Patient.address.extension",
        "sliceName" : "planet",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://gefyra.info/simone/StructureDefinition/MeinePlanetExtension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension:quadrant",
        "path" : "Patient.address.extension",
        "sliceName" : "quadrant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://gefyra.info/simone/StructureDefinition/MeineQuadrantenExtension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.city",
        "path" : "Patient.address.city",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.postalCode",
        "path" : "Patient.address.postalCode",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
