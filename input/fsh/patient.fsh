

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
* identifier[buergerNummer].value = "32476eurg23457846rertreeruz547854675"
* identifier[krankenversichertenNummer].value = "A123123123xxx"
* birthDate = 1980-09-02
* gender = #female
* name[officialName]
  * given[+] = "Simone"
  * given[+] = "Test"
  * family = "Heckmann"
* name[maidenName]
  * family = "Februar-Schulung" 
* address
  * line = "Musterstr. 7"
  * postalCode = "1234567"  
  * city = "Musterhausen"
  * extension[quadrant]
    * valueCode = #alpha 
  * extension[planet]
    * valueString = "Erde"
 
* maritalStatus = $marital#P "Polygamous"
* extension[spezies].valueCodeableConcept = http://fhir.ufp/CodeSystem/species#VK "Vulcan"


Profile: MeinPatientenProfil
Parent: Patient
Description: "Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten."  
* insert Autoren
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains buergerNummer 1..1 MS and krankenversichertenNummer 0..1 MS and einrichtungsspezifisch 0..1 MS
* identifier[buergerNummer] ^patternIdentifier.system = "http://fhir.ufp/sid/ufp-citizen-id"
  * ^short = "Eindeutige, galaxieweite Bürgernummer"
  * system 1..1 MS
  * value 1..1 MS
* identifier[krankenversichertenNummer] ^patternIdentifier.system = "http://fhir.de/sid/gkv/kvid-10"
  * system 1..1 MS
  * value 1..1 MS
  * value obeys KVNRPruefen
* identifier[einrichtungsspezifisch] ^patternIdentifier.type.coding.code = #MR
  * value 1..1 MS
* birthDate 0..1 MS 
  * ^short = "Geburtsdatum"
  * ^comment = "Ist ein Pflichtfeld weil..."
* address 0.. MS
  * line 1.. MS
  * city MS
  * postalCode 1.. MS
  * extension contains PlanetUFP named planet 1..1 MS 
  * extension contains MeineQuadrantenExtension named quadrant 1..1 MS
* extension contains MeineSpeziesExtension named spezies 1..* MS 
* active 1.. MS 
* active = true (exactly)
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #closed
* name contains officialName 1..1 MS and maidenName 1..1 MS
* name[officialName]
  * given 1.. MS
  * family 1.. MS
  * use 1.. MS
  * use = #official
* name[maidenName]
  * family 1.. MS
  * use 1.. MS
  * use = #maiden

Invariant: KVNRPruefen
Description: "Die Versichertennummer muss 10-stellig sein, mit einem Großbuchstaben beginnen, gefolgt von 9 Zahlen"
Expression: "matches('^[A-Z][0-9]{9}$')"
Severity: #error




Extension: MeinePlanetExtension
Description: "Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen"
* insert Autoren
* value[x] only string

Extension: MeineSpeziesExtension
Description: "Erweiterung zur Angabe der Spezies eines Patienten"
* insert Autoren
* value[x] only CodeableConcept
* value[x] from http://fhir.ufp/ValueSet/species (required)

CodeSystem: MeinQuadrantenCodeSystem
Description: "Terminologie zur Codierung der Quadranten der Milchstraße"
* insert Autoren
* #alpha "Alpha-Quadrant" "Der Alpha-Quadrant der Milchstraße"
* #beta "Beta-Quadrant" "Der Beta-Quadrant der Milchstraße"
* #gamma "Gamma-Quadrant" "Der Gamma-Quadrant der Milchstraße"
* #delta "Delta-Quadrant" "Der Delta-Quadrant der Milchstraße"

ValueSet: MeinQuadrantenValueSet
Description: "Valueset zur Codierung der Quadranten der Milchstraße"
* insert Autoren
* include codes from system MeinQuadrantenCodeSystem

Extension: MeineQuadrantenExtension
Description: "Extension zur Angabe des Quadranten an einer Adresse"
* insert Autoren
* ^context.type = #element
* ^context.expression = "Patient.address"
* value[x] only code
* value[x] from MeinQuadrantenValueSet (required)

RuleSet: Autoren
* ^contact[+].name = "Simone Heckmann"
* ^contact[=].telecom.system = #phone
* ^contact[=].telecom.value = "1234235345-3456"
* ^contact[+].name = "Gefyra GmbH"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://gefyra.de"