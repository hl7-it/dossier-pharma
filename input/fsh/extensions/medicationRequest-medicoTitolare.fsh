Extension: MedicationRequestMedicoTitolare
Id: medicationRequest-medicoTitolare
Title: "Medico Titolare (MedicationRequest)"
Description: "Estensione usata per descrivere il medico titolare in una prescrizione"

* ^experimental = false
// * ^context[+].type = #fhirpath
// * ^context[=].expression = "MedicationRequest"
* . ^short = "Medico titolare"
* . ^definition = "Estensione usata per descrivere il medico titolare in una prescrizione"
* value[x] 1..
* value[x] only Reference (Practitioner or PractitionerRole)
