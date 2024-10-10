Extension: MedicationRequestPianoTerapeutico
Id: medicationRequest-pianoTerapeutico
Title: "Farmaco associato al Piano Terapeutico (MedicationRequest)"
Description: "Estensione usata per descrivere se il farmaco prescritto appartiene ad un Piano Terapeutico"

* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* . ^short = "L'estensione indica se il farmaco prescritto appartiene ad un Piano Terapeutico"
* . ^definition = "Estensione usata per descrivere se il farmaco prescritto appartiene ad un Piano Terapeutico"

* extension contains
    existPt 1..1 and
    PT 0..1
* extension[existPt].value[x] only boolean
* extension[existPt].value[x] ^short = "true o false"
* extension[PT].value[x] only Reference (CarePlan)