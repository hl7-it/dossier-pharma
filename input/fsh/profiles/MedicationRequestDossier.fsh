Profile:  MedicationRequestItDossierPharma
Parent:   MedicationRequest
Id:       MedicationRequest-it-dossierPharma
Title:    "MedicationRequest - Dossier Farmaceutico"
Description: "Rappresentazione della prescrizione del farmaco tramite il profilo MedicationRequest"
//=================================================================

/* === TO DO 
- add vocabulary bindings instead of filtering per coding.system
- 
=== */

* ^status = #draft
* extension contains MedicationRequestMedicoTitolare named medicoTitolare 1..1
* extension[medicoTitolare].valueReference  only Reference(MedicoPrescrittore)

* extension contains MedicationRequestPianoTerapeutico named pianoTerapeutico 0..1
* extension[pianoTerapeutico].extension[PT].valueReference only Reference (CarePlanItDossierPharma)
* extension[pianoTerapeutico].extension[existPt].valueBoolean

* obeys pianoTerapeutico-1

* status 1.. 
* intent = #order (exactly) // do we really need to constraint to order ?
* intent ^short = "order"

// maybe better to have medication CodeableConcept

* medication[x] 
* medicationReference only Reference ( MedicationItDossierPharma )
* medicationCodeableConcept 1..1


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
//* medicationCodeableConcept.coding[eccezioni] = $uri#UNK
// * medicationCodeableConcept.coding[eccezioni].code = #UNK
* medicationCodeableConcept.text ^short = "Descrizione testuale del farmaco"


* subject 
* subject only Reference(PatientDossierPharma)
* subject.type 0..
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.system 1..
* subject.identifier.system = $CF (exactly)
* subject.identifier.value 1..
* subject.identifier.value ^short = "Codice Fiscale"
* subject.display 0.. 
* authoredOn 1.. 
* authoredOn ^short = "Data compilazione della ricetta da parte del medico"
* requester 1.. 
* requester only Reference(MedicoPrescrittore)

* requester.reference 0..1
* requester.identifier 1..1
* requester.identifier ^short = "Valorizzato con identificativo del medico titolare o sostituto"

* reasonCode 1..1
* reasonCode.text 1..1
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

* reasonCode.coding[notaAIFA] ^short = "AIFA"
* reasonCode.coding[notaAIFA] from $vs-aifa-nota
* reasonCode.coding[codiceDiagnosi] ^short = "Codice diagnosi"
* reasonCode.coding[codiceDiagnosi] from $vs-icd9cm

* note ^short = "Informazioni circa la prescrizione"

* groupIdentifier 1..1 
  * ^short = "Identificativo della prescrizione (e.g. NRE)"
  * system 1..1 //Definire un Value Set con tutti i system possibili
  * system from VsGroupIdentifierUri (required)
* groupIdentifier.value 1..1
* groupIdentifier.value ^short = "Identificativo della prescrizione (e.g. NRE)"

* insurance 
* insurance only Reference(Coverage-it-dossierPharma)


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

* dosageInstruction 1..1
  * route 1..1
  * timing 1..1
  * doseAndRate 1..1
* dosageInstruction ^short = "Istruzioni per assumere/sommministrare il farmaco"
* dosageInstruction.route ^short = "Modalità con cui assumere/sommministrare il farmaco"
* dosageInstruction.timing ^short = "Tempi con cui assumere/sommministrare il farmaco"
* dosageInstruction.doseAndRate ^short = "Dose per singola assunzione/sommministrazione del farmaco"


Invariant: pianoTerapeutico-1
Description: "If pianoTerapeutico is true, reference to CarePlan must be present."
Severity: #error
Expression: "extension.where(url = 'http://hl7.it/fhir/dossier-pharma/StructureDefinition/medicationRequest-pianoTerapeutico').extension.where(url = 'existPt' and value = true).exists() implies extension.where(url = 'http://hl7.it/fhir/dossier-pharma/StructureDefinition/medicationRequest-pianoTerapeutico').extension.where(url = 'PT' and value.exists()).exists()"