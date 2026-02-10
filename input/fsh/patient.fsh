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

Profile: MeinPatientenProfil
Parent: Patient
Description: "Die ist ein Patienten-Profil mit den Minimalanforderungen für Patientenstammdaten."  
* birthDate 1..1 MS 
  * ^short = "Geburtsdatum"
  * ^comment = "Ist ein Pflichtfeld weil..."
* address 1.. MS
  * line 1.. MS
  * city MS
  * postalCode 1.. MS
  * extension contains MeinePlanetExtension named planet 1..1 MS


Extension: MeinePlanetExtension
Description: "Dies ist eine Extension, um Angaben zum Planeten an eine Adresse hinzuzufügen"
* value[x] only string


   