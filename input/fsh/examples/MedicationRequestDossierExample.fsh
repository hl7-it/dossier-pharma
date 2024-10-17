Instance: MedicationRequestDossierExample001
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC"
Description: "Esempio di Prima Prescrizione farmaceutica (Insulina) associata al Piano Terapeutico"
Usage: #example
 
* id = "MedicationRequest-it-dossierPharma-ex001"
* status = #completed
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = true
* extension[pianoTerapeutico].extension[PT].valueReference = Reference (CarePlanExample)
* medicationCodeableConcept = $aic#037568019 "5 MICROGRAMMI SOLUZIONE INETTABILE - USO SOTTOCUTANEO PENNA PRERIEMPITA (VETRO)" 
* subject = Reference (Patient-Dossier-Esempio)
* subject.identifier.system = $CF
* subject.identifier.value = "VRDMRA89D43F979Y"
* authoredOn = "2024-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample02)
* requester.identifier.system = $CF
* requester.identifier.value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Diabete Mellito di Tipo 2"
* groupIdentifier
  * system = $NRE
  * value = "030A05714294324"
* dosageInstruction.text = "20 unità prima della colazione"
* dosageInstruction.doseAndRate.doseQuantity = 20 $unitOfMeasure#U
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d // "d" per giorno
* dosageInstruction.route = $sct#3876002 "Subcutaneous tissue structure of femoral region"
* dispenseRequest.quantity.value = 4
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample02)
* dispenseRequest.validityPeriod.start = "2024-01-31T14:31:22.387Z"
* dispenseRequest.validityPeriod.end = "2024-02-28T14:31:22.387Z"

//* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#N
 
 
Instance: MedicationRequestDossierExample002
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per ATC 1"
Description: "Esempio di Prescrizione farmaceutica per ATC - PANTOPRAZOLO"
Usage: #example
 
* id = "MedicationRequest-it-dossierPharma-ex002"
* status = #completed
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = false
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample02)
* medicationCodeableConcept = $atc#A02BC02
* medicationCodeableConcept.text = "PANTOPRAZOLO soluzione iniettabile"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample02)
* requester.identifier
  * value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Esofagite da reflusso"
 
* groupIdentifier
  * system = $NRE
  * value = "030A05714294324"
* dosageInstruction.text = "1 fiala al giorno"
* dosageInstruction.doseAndRate.doseQuantity = 2 $odf#IVSOL "Intravenous Solution"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2022-01-31T15:00:00Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $sct#47625008 "Intravenous route"
* dispenseRequest.quantity.value = 10 // Numero di fiale
 
Instance: MedicationRequestDossierExample003
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC 2"
Description: "Esempio di  Prescrizione farmaceutica per AIC - AIRCORT"
Usage: #example
 
* id = "MedicationRequest-it-dossierPharma-ex003"
* status = #active
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = false
* medicationCodeableConcept = $aic#033736075
  * text = "AIRCORT NEBUL20FL 2ML 0,5MG/ML"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-02-04T10:59:31.234Z"
* requester = Reference(MedicoPrescrittoreExample01)
* requester.identifier
  * value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Asma bronchiale"
* groupIdentifier
  * system = $NRE
  * value = "050A05714294322"
* dosageInstruction.text = "0,5 mg due volte al giorno"
* dosageInstruction.doseAndRate.doseQuantity = 0.5 $odf#GASINHL "Gas for Inhalation"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.periodUnit = #d // day
* dosageInstruction.route = $sct#46713006 "Nasal use"
* dispenseRequest.quantity.value = 1
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample01)
 
Instance: MedicationRequestDossierExample004
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC 3"
Description: "Esempio di Prescrizione farmaceutica per AIC - ZITROMAX"
Usage: #example
 
* id = "MedicationRequest-it-dossierPharma-ex004"
* status = #active
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = false
* medicationCodeableConcept = $aic#027860042
  * text = "ZITROMAX 3CPR RIV 500MG"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* authoredOn = "2022-02-04T10:59:31.234Z"
* requester = Reference(MedicoPrescrittoreExample01)
* requester.identifier
  * value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Faringite"
* groupIdentifier
  * system = $NRE
  * value = "050A05714294322"
* dosageInstruction.text = "1 compresse al giorno"
* dosageInstruction.doseAndRate.doseQuantity = 1 $odf#TAB "Tablet"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d // "d" per giorno
* dosageInstruction.route = $sct#26643006 "Oral use"
* dispenseRequest.quantity.value = 1
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample01)
 
Instance: MedicationRequestDossierExample005
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC 4"
Description: "Esempio di Prescrizione Farmaceutica per AIC - ISOPTIN"
Usage: #example
 
* id = "22571f37-4ac6-4025-a6b7-afa05c2f5f3b"
* status = #active
* extension[pianoTerapeutico].extension[existPt].valueBoolean = false
* medicationCodeableConcept = $aic#020609083 "ISOPTIN*30 cpr riv 80 mg" //TODO: add the content of CodeSystem in Terminology
* subject = Reference(Patient/Patient-Dossier-Esempio)
* subject.identifier.system = $CF
* subject.identifier.value = "VRDMRA89D43F979Y"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample01)
* requester.identifier
  * value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Ipertensione arteriosa"
* groupIdentifier
  * system = $NRE
  * value = "030A05714294325"
* dosageInstruction.text = "1 compresse al giorno"
* dosageInstruction.doseAndRate.doseQuantity = 1 $odf#TAB "TAB"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d // "d" per giorno
* dosageInstruction.route = $sct#26643006 "Oral use"
 
* dispenseRequest.quantity.value = 2
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample01)
 
 
Instance: MedicationRequestDossierExample006
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC 5"
Description: "Esempio di Prescrizione Farmaceutica per AIC - AUGMENTIN"
Usage: #example
 
 
* id = "22571f37-4ac6-4025-a6b7-afa05c2f5f3f"
* status = #active
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = false
* medicationCodeableConcept = $aic#039785050 "AUGMENTIN 875 MG/125 MG COMPRESSE RIVESTITE CON FILM"
* subject = Reference(Patient/Patient-Dossier-Esempio)
* subject.identifier.system = $CF
* subject.identifier.value = "VRDMRA89D43F979Y"
* authoredOn = "2022-01-31T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample02)
* requester.identifier
  * value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Tonsillite"
* groupIdentifier
  * system = $NRE
  * value = "030A05714294325"
* dosageInstruction.text = "1 compressa 2 volte al giorno"
* dosageInstruction.doseAndRate.doseQuantity = 1 $odf#TAB "Tablet"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.periodUnit = #d // "d" per giorno
* dosageInstruction.route = $sct#26643006 "Oral use"
* dispenseRequest.quantity.value = 2
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample02)

Instance: MedicationRequestDossierExample007
InstanceOf: MedicationRequestItDossierPharma
Title: "MedicationRequest per AIC 6"
Description: "Esempio di Seconda Prescrizione farmaceutica (Insulina) associata al Piano Terapeutico"
Usage: #example
 
* id = "MedicationRequest-it-dossierPharma-ex007"
* status = #completed
* intent = #order
* extension[pianoTerapeutico].extension[existPt].valueBoolean = true
* extension[pianoTerapeutico].extension[PT].valueReference = Reference (CarePlanExample)
* medicationCodeableConcept = $aic#037568019 "5 MICROGRAMMI SOLUZIONE INETTABILE - USO SOTTOCUTANEO PENNA PRERIEMPITA (VETRO)" 
* subject = Reference (Patient-Dossier-Esempio)
* subject.identifier.system = $CF
* subject.identifier.value = "VRDMRA89D43F979Y"
* authoredOn = "2022-03-01T14:31:22.387Z"
* requester = Reference(MedicoPrescrittoreExample02)
* requester.identifier.system = $CF
* requester.identifier.value = "PLLDSR80E47A462P"
* reasonCode = $aifa-nota#01
* reasonCode.text = "Diabete Mellito di Tipo 2"
* groupIdentifier
  * system = $NRE
  * value = "030A05756294325"
* dosageInstruction.text = "20 unità prima della colazione"
* dosageInstruction.doseAndRate.doseQuantity = 20 $unitOfMeasure#U
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d // "d" per giorno
* dosageInstruction.route = $sct#3876002 "Subcutaneous tissue structure of femoral region"
* dispenseRequest.quantity.value = 4
* extension[medicoTitolare].valueReference = Reference(MedicoPrescrittoreExample02)
* dispenseRequest.validityPeriod.start = "2024-03-01T14:31:22.387Z"
* dispenseRequest.validityPeriod.end = "2024-04-01T14:31:22.387Z"