

// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
//
  * given[0] = "James"
  * family = "Pond"

Instance: PatientBeispiel
InstanceOf: MeinPatientenProfil
Description: "Dies ist ein Beispielpatient."
* birthDate = 1980-09-02
* gender = #female
* name[+]
  * given[+] = "Simone"
  * given[+] = "Test"
  * family = "Heckmann"
* name[+]
  * family = "Februar-Schulung" 
* address
  * line = "Musterstr. 7"
  * postalCode = "1234567"  
  * city = "Musterhausen"
  * extension[planet]
    * valueString = "Erde"
  * extension[quadrant]
    * valueCode = #alpha  
* maritalStatus = $marital#P "Polygamous"
* extension[spezies].valueCodeableConcept = http://fhir.ufp/CodeSystem/species#VK "Vulcan"


Profile: MeinPatientenProfil
Parent: Patient
Description: "Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten."  
* birthDate 0..1 MS 
  * ^short = "Geburtsdatum"
  * ^comment = "Ist ein Pflichtfeld weil..."
* address 0.. MS
  * line 1.. MS
  * city MS
  * postalCode 1.. MS
  * extension contains MeinePlanetExtension named planet 1..1 MS 
  * extension contains MeineQuadrantenExtension named quadrant 1..1 MS
* extension contains MeineSpeziesExtension named spezies 1..* MS 
* active 1.. MS 
* active = true (exactly)


Extension: MeinePlanetExtension
Description: "Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen"
* value[x] only string

Extension: MeineSpeziesExtension
Description: "Erweiterung zur Angabe der Spezies eines Patienten"
* value[x] only CodeableConcept
* value[x] from http://fhir.ufp/ValueSet/species (required)

CodeSystem: MeinQuadrantenCodeSystem
Description: "Terminologie zur Codierung der Quadranten der Milchstraße"
* #alpha "Alpha-Quadrant" "Der Alpha-Quadrant der Milchstraße"
* #beta "Beta-Quadrant" "Der Beta-Quadrant der Milchstraße"
* #gamma "Gamma-Quadrant" "Der Gamma-Quadrant der Milchstraße"
* #delta "Delta-Quadrant" "Der Delta-Quadrant der Milchstraße"

ValueSet: MeinQuadrantenValueSet
Description: "Valueset zur Codierung der Quadranten der Milchstraße"
* include codes from system MeinQuadrantenCodeSystem

Extension: MeineQuadrantenExtension
Description: "Extension zur Angabe des Quadranten an einer Adresse"
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only code
* value[x] from MeinQuadrantenValueSet (required)


   