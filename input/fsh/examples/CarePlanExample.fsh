Instance: CarePlanExample
InstanceOf: CarePlanItDossierPharma
Title: "CarePlane Esempio"
Description: "Esempio di Piano Terapeutico"
Usage: #example

* id = "CarePlan-example"
* status = #completed
* intent = #order
* identifier.value = "8348732947324"
* activity.detail.productCodeableConcept = $atc#A02BC02
* activity.detail.productCodeableConcept.text = "PANTOPRAZOLO soluzione iniettabile"
* author = Reference(MedicoPrescrittoreExample01)
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"

* created = "2022-01-15T14:31:22.387Z"

* period.start = "2022-01-16T14:31:22.387Z"
* period.end = "2022-02-16T14:31:22.387Z"

* activity.detail.quantity.value = 1
* activity.detail.dailyAmount.value = 1
* activity.detail.status = #in-progress