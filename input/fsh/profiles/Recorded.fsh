Extension: Recorded
Id: Recorded
* ^url = "https://example.org/fhir/StructureDefinition/Recorded"
* ^experimental = false
* ^context[+].type = #fhirpath
* ^context[=].expression = "MedicationRequest"
* . ^short = "Estensione per veicolare la data di inizio erogazione"
* . ^definition = "Estensione per veicolare la data di inizio erogazione"
* value[x] 1..
* value[x] only dateTime
