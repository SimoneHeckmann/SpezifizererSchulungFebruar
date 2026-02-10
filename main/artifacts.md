# Artifacts Summary - v0.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MeinPatientenProfil](StructureDefinition-MeinPatientenProfil.md) | Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten. |
| [MyPatient](StructureDefinition-MyPatient.md) | An example profile of the Patient resource. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MeinePlanetExtension](StructureDefinition-MeinePlanetExtension.md) | Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen |
| [MeineQuadrantenExtension](StructureDefinition-MeineQuadrantenExtension.md) | Extension zur Angabe des Quadranten an einer Adresse |
| [MeineSpeziesExtension](StructureDefinition-MeineSpeziesExtension.md) | Erweiterung zur Angabe der Spezies eines Patienten |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MeinQuadrantenValueSet](ValueSet-MeinQuadrantenValueSet.md) | Valueset zur Codierung der Quadranten der Milchstraße |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MeinQuadrantenCodeSystem](CodeSystem-MeinQuadrantenCodeSystem.md) | Terminologie zur Codierung der Quadranten der Milchstraße |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [PatientBeispiel](Patient-PatientBeispiel.md) | Dies ist ein Beispielpatient. |
| [PatientExample](Patient-PatientExample.md) | An example of a patient with a license to krill. |

