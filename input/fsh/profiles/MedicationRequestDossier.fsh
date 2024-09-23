Profile:  MedicationRequestItDossierPharma
Parent:   MedicationRequest
Id:       MedicationRequest-it-dossierPharma
Title:    "MedicationRequest - Dossier Farmaceutico"
Description: "Rappresentazione della prescrizione del farmaco tramite il profilo MedicationRequest."
//=================================================================

/* === TO DO 
- add vocabulary bindings instead of filtering per coding.system
- 
=== */

* ^status = #draft
* extension contains MedicationRequestMedicoTitolare named medicoTitolare 0..1
* extension[medicoTitolare].valueReference  only Reference( MedicoPrescrittore )

* status 1.. 
* intent = #order (exactly) // do we really need to constraint to order ?
* intent ^short = "order"

// maybe better to have medication CodeableConcept

* medication[x] 
* medicationReference only Reference ( MedicationItDossierPharma )
* medicationCodeableConcept 0..1


* medicationCodeableConcept.coding 1.. 
  * system 1.. 
  * code 1.. 
  * display 
  
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.ordered = false
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    ATC 0..1 and AIC 0..1 and
    gruppoEquivalenza 0..1  and eccezioni 0..1

* medicationCodeableConcept.coding[ATC] 
* medicationCodeableConcept.coding[ATC] ^sliceName = "ATC"
* medicationCodeableConcept.coding[ATC] from $vs-atc
* medicationCodeableConcept.coding[AIC] from $vs-aic
* medicationCodeableConcept.coding[gruppoEquivalenza] from  $vs-gruppo-equivalenza
* medicationCodeableConcept.coding[eccezioni] = $v3-NullFlavor#UNK
* medicationCodeableConcept.text ^short = "Descrizione testuale del farmaco"


* subject 
* subject only Reference(PatientItBase)
* subject.type 0..
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.system 1..
* subject.identifier.system = $CF (exactly)
* subject.identifier.value 1..
* subject.identifier.value ^short = "Codice Fiscale"
* subject.display 0.. 
* authoredOn 0.. 
* requester 1.. 
* requester only Reference(MedicoPrescrittore)

* requester.reference 0..1
* requester.identifier 0..1
* requester.identifier ^short = "Valorizzato con identificativo del medico titolare o sostituto"

* reasonCode.text ^short = "Descrizione diagnosi"
* reasonCode.coding 
  * system 1.. 
  * code 1.. 
  * display 
  
 
* reasonCode.coding ^slicing.discriminator.type = #pattern
* reasonCode.coding ^slicing.discriminator.path = "$this"
* reasonCode.coding ^slicing.ordered = false
* reasonCode.coding ^slicing.rules = #open

* reasonCode.coding contains
    notaAIFA 0..1 and
    codiceDiagnosi 0..1

* reasonCode.coding[notaAIFA] ^short = "Nota AIFA"
* reasonCode.coding[notaAIFA] from $vs-aifa-nota
* reasonCode.coding[codiceDiagnosi] ^short = "Codice diagnosi"
* reasonCode.coding[codiceDiagnosi] from $vs-icd9cm

* note ^short = "Informazioni circa la prescrizione"

* groupIdentifier 1..1 
  * ^short = "Identificativo della prescrizione (e.g. NRE)"
  * system 1..1 //Definire un Value Set con tutti i system possibili
  * system from VsGroupIdentifierUri (required)
* groupIdentifier.value ^short = "Identificativo della prescrizione (e.g. NRE)"

* insurance 
* insurance only Reference($Coverage-it-base)


* dispenseRequest 1.. 
* dispenseRequest.quantity 1..
* dispenseRequest.numberOfRepeatsAllowed 0..1

// change to allowedCodeableConcept

//* substitution
//  * ^meaningWhenMissing = "In assenza dell'elemento substitution, il farmaco indicato nella prescrizione è da intendersi come 'sostituibile'"

//* substitution.meaningWhenMissing = "In assenza dell'elemento substitution, il farmaco indicato nella prescrizione è da intendersi come 'sostituibile'"
* substitution.allowedCodeableConcept 1..1 
* substitution.allowedCodeableConcept from VsSubstitutionDossierPharma

* substitution.reason from VsMotivazioniNonSost (preferred) //TODO: should be added also the substitution reason?
* substitution.reason ^short = "Motivo di non sostituibilità del farmaco"

* reasonReference ^short = "Condizioni cliniche ed osservazioni che motivano la prescrizione (parametri vitali)" //TODO: only parametri vitali? 
* dispenseRequest.validityPeriod ^short = "Periodo di tempo per il quale è autorizzata la fornitura"

// * dosageInstruction.timing.repeat.boundsPeriod ^short = "Durata temporale della terapia farmacologica"
// * dosageInstruction.timing.repeat.boundsPeriod 1..1
// * dosageInstruction.timing.repeat.boundsPeriod.start 1..1
* dosageInstruction ^short = "Modalità di assunzione del farmaco"

// inserire la frequenza di assunzione dosageInstruction.dosage.timing.repeat (non rendere obbligatorio nulla)
/*--
* substitution.allowedCodeableConcept.coding 1..1
* substitution.allowedCodeableConcept.coding.system 1..
* substitution.allowedCodeableConcept.coding.system = $non-sostituibilità (exactly)
* substitution.allowedCodeableConcept.coding.code 1..
---*/