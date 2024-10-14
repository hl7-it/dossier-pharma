Profile: CoverageItBase
Parent: Coverage
Id: Coverage-it-base
Title: "Coverage - base"
Description: "Rappresentazione dell'ASL di residenza e delle esenzioni attraverso il profilo base Coverage"
* ^version = "0.0.1"
* ^status = #active
* ^date = "2020-06-03T11:10:33+02:00"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* costToBeneficiary.value[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* costToBeneficiary.exception MS
* costToBeneficiary.exception.extension contains StatoEsenzioneCoverage named stato-esenzione 0..1 MS
* costToBeneficiary.exception.type MS
* costToBeneficiary.exception.type from vs-mds-esenzioni (extensible)
* costToBeneficiary.exception.type ^short = "codice esensione"
* costToBeneficiary.exception.period MS 