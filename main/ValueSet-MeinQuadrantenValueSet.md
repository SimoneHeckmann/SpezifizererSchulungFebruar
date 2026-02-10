# MeinQuadrantenValueSet - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MeinQuadrantenValueSet**

## ValueSet: MeinQuadrantenValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/simone/ValueSet/MeinQuadrantenValueSet | *Version*:0.0.1 |
| Draft as of 2026-02-10 | *Computable Name*:MeinQuadrantenValueSet |

 
Valueset zur Codierung der Quadranten der Milchstraße 

 **References** 

* [MeineQuadrantenExtension](StructureDefinition-MeineQuadrantenExtension.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MeinQuadrantenValueSet",
  "url" : "http://gefyra.info/simone/ValueSet/MeinQuadrantenValueSet",
  "version" : "0.0.1",
  "name" : "MeinQuadrantenValueSet",
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
  "description" : "Valueset zur Codierung der Quadranten der Milchstraße",
  "compose" : {
    "include" : [
      {
        "system" : "http://gefyra.info/simone/CodeSystem/MeinQuadrantenCodeSystem"
      }
    ]
  }
}

```
