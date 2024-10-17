Instance: Coverage-Dossier-Esempio
InstanceOf: CoverageItBase
//InstanceOf: Coverage
Title : "Coverage a carico del SSN"
Description: "Esempio di Esenzione a carico del SSN"
* status = 	#active
* id = "161a49c3-693e-49b5-8fd2-b8f78cb3d369"
* type = $COV_TYP#PUBLICPOL
* beneficiary = Reference(Patient/Patient-Dossier-Esempio)
* payor = Reference(Organization/Organization-Dossier-Esempio2)
* costToBeneficiary.valueMoney.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* costToBeneficiary.valueMoney.extension[0].valueCode = #not-applicable
* costToBeneficiary.exception.extension[coverage-exceptionStatus].url = "http://hl7.it/fhir/dossier-pharma/StructureDefinition/coverage-exceptionStatus"
* costToBeneficiary.exception.extension[coverage-exceptionStatus].valueCodeableConcept = $V3ActStatus#active
* costToBeneficiary.exception.type.coding = $mds-esenzione#E03