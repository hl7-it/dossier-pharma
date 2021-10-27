Extension: Recorded
Id: Recorded
Title: "Recorded"
Description: "Estensione per data inizio erogazione"

* ^experimental = false
* ^context[+].type = #fhirpath
* ^context[=].expression = "MedicationDispense"
* . ^short = "Estensione per veicolare la data di inizio erogazione"
* . ^definition = "Estensione per veicolare la data di inizio erogazione"
* value[x] 1..
* value[x] only dateTime
