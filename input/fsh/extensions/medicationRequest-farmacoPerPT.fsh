Extension: MedicationRequestFarmacoPerPT
Id: medicationRequest-farmacoPerPT
Title: "Farmaco associato al Piano Terapeutico (MedicationRequest)"
Description: "Estensione usata per descrivere se il farmaco prescritto appartiene ad un Piano Terapeutico"

* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* . ^short = "L'estensione indica se il farmaco prescritto appartiene ad un Piano Terapeutico"
* . ^definition = "Estensione usata per descrivere se il farmaco prescritto appartiene ad un Piano Terapeutico"
* value[x] only boolean
* value[x] ^short = "true o false"
