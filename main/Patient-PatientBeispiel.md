# PatientBeispiel - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientBeispiel**

## Example Patient: PatientBeispiel

Profile: [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md)

Simone Test Heckmann Female, DoB: 1980-09-02

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Marital Status: | Polygamous |
| Alt. Name: | Februar-Schulung | | |
| Contact Detail | Musterstr. 7 Musterhausen 1234567 | | |
|  | Vulcan | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientBeispiel",
  "meta" : {
    "profile" : [
      "http://gefyra.info/simone/StructureDefinition/MeinPatientenProfil"
    ]
  },
  "extension" : [
    {
      "url" : "http://gefyra.info/simone/StructureDefinition/MeineSpeziesExtension",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://fhir.ufp/CodeSystem/species",
            "code" : "VK",
            "display" : "Vulcan"
          }
        ]
      }
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Heckmann",
      "given" : ["Simone", "Test"]
    },
    {
      "family" : "Februar-Schulung"
    }
  ],
  "gender" : "female",
  "birthDate" : "1980-09-02",
  "address" : [
    {
      "extension" : [
        {
          "url" : "http://gefyra.info/simone/StructureDefinition/MeinePlanetExtension",
          "valueString" : "Erde"
        },
        {
          "url" : "http://gefyra.info/simone/StructureDefinition/MeineQuadrantenExtension",
          "valueCode" : "alpha"
        }
      ],
      "line" : ["Musterstr. 7"],
      "city" : "Musterhausen",
      "postalCode" : "1234567"
    }
  ],
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "code" : "P",
        "display" : "Polygamous"
      }
    ]
  }
}

```
