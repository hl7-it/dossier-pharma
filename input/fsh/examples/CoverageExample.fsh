/* 000000000000000000 00000000000000 */
Instance: EsempioEsenzione
// InstanceOf: CoverageItBase
InstanceOf: Coverage
Description: "Esempio Esenzione"
* status = 	#active
* type = COV_TYP#PUBLICPOL
* beneficiary = Reference(Patient/esempio-CF-residenza)
* payor = Reference(Organization/asl-020101)
* costToBeneficiary.valueMoney.extension[0].url = $dataAbsentReason
* costToBeneficiary.valueMoney.extension[0].valueCode = #not-applicable
* costToBeneficiary.exception.extension[0].url = $coverage-exceptionStatus
* costToBeneficiary.exception.extension[0].valueCodeableConcept = V3ActStatus#active
* costToBeneficiary.exception.type = http://terminology.hl7.it/CodeSystem/minsan-esenzioni#E01