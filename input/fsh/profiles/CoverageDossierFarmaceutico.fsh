Profile: CoverageItBase
Parent: Coverage
Id: Coverage-it-base
Title: "Coverage - base"
Description: "Profilo base generico per Coverage: include la rappresentazione dell'ASL di residenza e delle esensioni."
* ^version = "0.0.1"
* ^status = #active
* ^date = "2020-06-03T11:10:33+02:00"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* beneficiary 
* costToBeneficiary.value[x].extension contains DataAbsentReason named absenceReason 0..1
* costToBeneficiary.exception 
* costToBeneficiary.exception.extension contains $coverage-exceptionStatus named stato-esenzione 0..1
* costToBeneficiary.exception.type 
//* costToBeneficiary.exception.type from vs-minsan-esenzioni (extensible)
* costToBeneficiary.exception.type ^short = "codice esensione"
* costToBeneficiary.exception.period