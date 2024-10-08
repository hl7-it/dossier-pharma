Instance: CarePlanExample
InstanceOf: CarePlanItDossierPharma
Title: "CarePlan Esempio"
Description: "Esempio di Piano Terapeutico"
Usage: #example

* id = "CarePlan-example"
* status = #completed
* intent = #order
* identifier.value = "8348732947324"
* activity.detail.productCodeableConcept = $aic#037568019 "5 MICROGRAMMI SOLUZIONE INETTABILE - USO SOTTOCUTANEO PENNA PRERIEMPITA (VETRO)"
* author = Reference(MedicoPrescrittoreExample01)
* subject = Reference (Patient-Dossier-Esempio)


* created = "2024-09-15T14:31:22.387Z"

* period.start = "2024-09-16T14:31:22.387Z"
* period.end = "2024-10-16T14:31:22.387Z"

* activity.detail.quantity.value = 1
* activity.detail.quantity = $sct#422145002 "Inject"
* activity.detail.dailyAmount.value = 2
* activity.detail.status = #in-progress