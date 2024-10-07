Extension: BirthPlaceIta
Parent: $patient-birthPlace
Id: birth-place-ita
Title: "Address Birth Place"
Description: "Definizione dell'indirizzo base per la descrizione del luogo di nascita."
* value[x] only AddressItBase

Extension: ExtCodeableBirthPlace
Id: patient-codeableBirthPlace
Title: "Codice comune e/o stato di nascita"
Description: "Codice comune e/o stato di nascita."
* ^context.type = #element
* ^context.expression = "Patient"
* ^url = "http://hl7.it/fhir/StructureDefinition/patient-codeableBirthPlace"
* value[x] only CodeableConcept