Profile: CoverageDossierPharma
Parent: Coverage
Id: Coverage-it-dossierPharma
Title: "Coverage - Dossier Farmaceutico"
Description: "Rappresentazionedelle esenzioni attraverso il profilo Coverage"
* ^status = #draft
* beneficiary MS
* costToBeneficiary.value[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* costToBeneficiary.exception MS
* costToBeneficiary.exception.extension contains coverage-exceptionStatus named stato-esenzione 0..1 MS
* costToBeneficiary.exception.type MS
* costToBeneficiary.exception.type from $vs-mds-esenzioni (extensible)
* costToBeneficiary.exception.type ^short = "codice esensione"
* costToBeneficiary.exception.period MS 