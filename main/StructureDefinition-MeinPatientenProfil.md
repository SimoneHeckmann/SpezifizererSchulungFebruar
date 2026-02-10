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

**Usages:**

* Examples for this Profile: [Patient/PatientBeispiel](Patient-PatientBeispiel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MeinPatientenProfil)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MeinPatientenProfil.csv), [Excel](StructureDefinition-MeinPatientenProfil.xlsx), [Schematron](StructureDefinition-MeinPatientenProfil.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MeinPatientenProfil",
  "url" : "http://gefyra.info/simone/StructureDefinition/MeinPatientenProfil",
  "version" : "0.0.1",
  "name" : "MeinPatientenProfil",
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
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "Geburtsdatum",
        "comment" : "Ist ein Pflichtfeld weil...",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension",
        "path" : "Patient.address.extension",
        "min" : 1
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
