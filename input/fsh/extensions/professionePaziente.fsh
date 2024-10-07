Extension: ExtProfessionePaziente
Id: patient-occupation-it
Title: "Professione del paziente"
Description: "Estensione per gestire la professione del paziente come CodeableConcept."
* ^version = "0.1.0"
* ^date = "2020-06-30T18:23:29+02:00"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* ^url = "http://hl7.it/fhir/StructureDefinition/patient-occupation-it"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $istat-professione (example)