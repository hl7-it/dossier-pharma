Instance: MedicationRequestDossierExample001
InstanceOf: MedicationRequestItDossierPharma
Title: "Prescrizione farmaceutica per AIC, con nota, non sostituibile, erogata"
Usage: #example

* id = "MedicationRequest-it-dossierPharma-ex001"
* status = #completed
* intent = #order
* medicationCodeableConcept = $aic#031981069 "PANTORC - 28CPR GASTR 20MG" //TODO: add the content of CodeSystem in Terminology
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample01)
* reasonCode = $aifa-nota#001
* groupIdentifier
  * system = $NRE
  * value = "030A05714294324"
* dispenseRequest.quantity.value = 2
//* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#N 


Instance: MedicationRequestDossierExample002
InstanceOf: MedicationRequestItDossierPharma
Title: "Prescrizione farmaceutica per ATC"
Usage: #example

* id = "MedicationRequest-it-dossierPharma-ex002"
* status = #active
* intent = #order
* medicationCodeableConcept = $atc#A02BC02
  * text = "PANTOPRAZOLO"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample01)
* reasonCode = $aifa-nota#001
* groupIdentifier
  * system = $NRE
  * value = "030A05714294324"
* dispenseRequest.quantity.value = 2


Instance: MedicationRequestDossierExample003
InstanceOf: MedicationRequestItDossierPharma
Title: "Prescrizione farmaceutica per AIC, farmaco 1 di 2 su NRE"
Usage: #example

* id = "MedicationRequest-it-dossierPharma-ex003"
* status = #active
* intent = #order
* medicationCodeableConcept = $aic#033736075
  * text = "AIRCORT NEBUL20FL 2ML 0,5MG/ML"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-02-04T10:59:31.234Z"
* requester = Reference(MedicoPrescrittoreExample01)
* groupIdentifier
  * system = $NRE
  * value = "050A05714294322"
* dispenseRequest.quantity.value = 1

Instance: MedicationRequestDossierExample004
InstanceOf: MedicationRequestItDossierPharma
Title: "Prescrizione farmaceutica per AIC, farmaco 2 di 2 su NRE"
Usage: #example

* id = "MedicationRequest-it-dossierPharma-ex004"
* status = #active
* intent = #order
* medicationCodeableConcept = $aic#027860042
  * text = "ZITROMAX 3CPR RIV 500MG"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-02-04T10:59:31.234Z"
* requester = Reference(MedicoPrescrittoreExample01)
* groupIdentifier
  * system = $NRE
  * value = "050A05714294322"
* dispenseRequest.quantity.value = 1

Instance: MedicationRequestDossierExample005
InstanceOf: MedicationRequestItDossierPharma
Title: "Prescrizione farmaceutica per AIC, con nota, non sostituibile, erogata"
Usage: #example

* id = "MedicationRequest-it-dossierPharma-ex005"
* status = #completed
* intent = #order
* medicationCodeableConcept = $aic#020609083 "80 MG COMPRESSE RIVESTITE CON FILM" //TODO: add the content of CodeSystem in Terminology
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample01)
* reasonCode = $aifa-nota#001
* groupIdentifier
  * system = $NRE
  * value = "030A05714294325"
* dispenseRequest.quantity.value = 2
