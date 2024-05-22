Extension: MedicationDispenseRecorded
Id: medicationDispense-recorded
Title: "Data Inizio Erogazione (MedicationDispense)"
Description: "Estensione per data inizio erogazione"

* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* . ^short = "Data di inizio erogazione"
* . ^definition = "Estensione usata per indicare la data di inizio erogazione"
* value[x] 1..
* value[x] only dateTime
