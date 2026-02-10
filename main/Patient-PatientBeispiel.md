# PatientBeispiel - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientBeispiel**

## Example Patient: PatientBeispiel

Profile: [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md)

Simone Test Heckmann Female, DoB: 1980-09-02

-------

| | |
| :--- | :--- |
| Alt. Name: | Februar-Schulung |
| Contact Detail | Musterstr. 7 Musterhausen 1234567 |



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
        }
      ],
      "line" : ["Musterstr. 7"],
      "city" : "Musterhausen",
      "postalCode" : "1234567"
    }
  ]
}

```
