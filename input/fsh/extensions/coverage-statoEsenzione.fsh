Extension:   StatoEsenzioneCoverage
Id:          coverage-exceptionStatus
Title:       "Stato Esenzione - Coverage"
Description: "Estensione per gestire lo stato di una esenzione"
//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* . ^short = "Stato esenzione"
* . ^definition = "L'estensione indica lo stato (attivo, concluso ...) dell'esenzione per un paziente"

* value[x] only CodeableConcept
* valueCodeableConcept from $vs-statoEsenzione (required)