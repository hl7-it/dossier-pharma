Instance: Patient-Dossier-Esempio
InstanceOf: PatientDossierPharma
Title: "Patient"
Usage: #example
Description: "Esempio di Paziente iscritto al SSN"

* extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Pace"
* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[=] = "Via della Pace, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"
* extension[professione].valueCodeableConcept = $CS_ProfessioniIstat#1.1.3 "Dirigenti della magistratura"
* extension[titoloStudio].valueCodeableConcept = $CS_TitoloStudioIstat#40205013 "Giuridico economico aziendale"

* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "VRDNGL89D43H501J" 
  * extension[certificazioneId].extension[when].valueDateTime = "2024-09-01"

* extension[luogoNascitaCodeable].valueCodeableConcept = $CS_luogoNascita#100 "Italia"


* name.family = "Verdi"
* name.given = "Angela"

* telecom[0].system = #phone
* telecom[0].value = "7342643738"
* birthDate = "1989-04-03"

* gender = #female

* address.city = "Roma"
* address.country = "IT"
* address.postalCode = "23839"
* address.line = "Via Nazionale, 52"
* address.use = #home
* address.extension[residenza].valueBoolean = true
