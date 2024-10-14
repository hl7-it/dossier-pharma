Instance: Patient-Dossier-Esempio
InstanceOf: PatientDossierPharma
Title: "Patient"
Usage: #example
Description: "Esempio di Paziente iscritto al SSN"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension.valueAddress.country = "Italia"
* extension.valueAddress.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* extension.valueAddress.country.extension.valueCoding = $istat-comuni#015146 "Milano"
* extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Vittoria"
* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[=] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"
* extension[luogoNascitaCodeable].valueCodeableConcept = $CS_luogoNascita#100 "Italia"
* extension[professione].valueCodeableConcept = $CS_ProfessioniIstat#1.1.3 "Dirigenti della magistratura"
* extension[titoloStudio].valueCodeableConcept = $CS_TitoloStudioIstat#40205013 "Giuridico economico aziendale"
* identifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier.value = "VRDMRA89D43F979Y"
* identifier.extension[certificazioneId].extension[when].valueDateTime = "2020-05-01"
* active = true
* name.family = "Maria"
* name.given = "Verdi"
* gender = #female
* birthDate = "1989-04-03"
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/address-official"
* address[=].extension.valueBoolean = true
* address[=].use = #home
* address[=].type = #postal
* address[=].text = "Via Nazionale, Roma - 00100 - Italia"
* address[=].line = "Viale della Repubblica 12, scala 2"
* address[=].city = "Roma"
* address[=].postalCode = "23839"
* address[=].country = "Italia"
* contact.telecom.system = #phone
* contact.telecom.value = "7342643738"