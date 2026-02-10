# PatientExample - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample**

## Example Patient: PatientExample

Profile: [MyPatient](StructureDefinition-MyPatient.md)

James Pond (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample",
  "meta" : {
    "profile" : ["http://gefyra.info/simone/StructureDefinition/MyPatient"]
  },
  "name" : [
    {
      "family" : "Pond",
      "given" : ["James"]
    }
  ]
}

```
