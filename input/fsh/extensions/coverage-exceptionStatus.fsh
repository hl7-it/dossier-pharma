//=========================
//====== Estensione =====================================
Extension:   StatoEsenzioneCoverage
Id:          coverage-exceptionStatus
Title:       "Stato Esenzione"
Description: "Estensione per gestire lo stato di una esenzione"
//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "Coverage.costToBeneficiary.exception"
* . ^short = "Stato esenzione"
* . ^definition = "Estensione usata per indicare lo stato dell'esenzione"

* value[x] only CodeableConcept
* valueCodeableConcept from VsStatoEsenzione (required)