Profile: MedicationDispenseItDossierPharma
Parent: MedicationDispense
Id:       MedicationDispense-it-dossierPharma
Title:    "MedicationDispense - Dossier Farmaceutico"
Description: "Rappresentazione dell'erogazione del farmaco tramite il profilo MedicationDispense"
//=================================================================

/* === TO DO 
- add vocabulary bindings instead of filtering per coding.system
- 
=== */

* extension contains MedicationDispenseRecorded named recorded 1..1
//* extension[recorded] ^min = 1

* identifier 0..1  
* identifier.system 0..1
* identifier.value 0..1

* status 

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
* medicationCodeableConcept.coding[eccezioni] from $vs-NullFlavor
// * medicationCodeableConcept.coding[eccezioni].system = $uri#urn:oid:2.16.840.1.113883.5.1008
// * medicationCodeableConcept.coding[eccezioni].code = #UNK
* medicationCodeableConcept.text ^short = "Descrizione testuale del farmaco"

* medicationCodeableConcept.text ^short = "Descrizione testuale del farmaco"
* medicationReference only Reference(MedicationItDossierPharma)
* medicationReference.reference 0..

* subject 
* subject only Reference(PatientDossierPharma)
* subject.type 0..
* subject.type = "Patient" (exactly)
// * subject.identifier 1..
// * subject.identifier.system 1..
// * subject.identifier.system = $CF (exactly)
// * subject.identifier.value 1..
* subject.identifier.value ^short = "Codice Fiscale"
* subject.display 0.. 

* performer 1..
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains
    CFErogatore 1..1 
	// and    CodiceStrutturaErogatore 1..1 and    ASLErogatore 1..1
* performer[CFErogatore].actor.identifier 1..
* performer[CFErogatore].actor.identifier.system 1..
* performer[CFErogatore].actor.identifier.system = $CF (exactly)
* performer[CFErogatore].actor.identifier.value 1..
* performer[CFErogatore].actor.identifier.value ^short = "CF dell'erogatore"

* location  only Reference(LocationItDossierPharma) 
* location.reference 0..1
* quantity 1..
* quantity.value 1..
* quantity.value ^short = "Numero confezioni erogate"

* whenHandedOver 1..
* whenHandedOver ^short = "Data erogazione ricetta"
* substitution 0..1
* substitution.type 1..
* substitution.type.coding 1..
* substitution.type.coding from vs-codice-sostituzione-sostanza
* substitution.type.coding.system 1..
//* substitution.type.coding.system = $DIZ_Sostituzione (exactly)
* substitution.type.coding.code 1..
* substitution.reason 1..
* substitution.reason.coding 1..
* substitution.reason.coding from vs-motivo-sostituzone
* substitution.reason.coding.system 1..
* substitution.reason.coding.system ^short = "OID flagErog"
* substitution.reason.coding.code 1..
* authorizingPrescription ^short = "Prescrizione dei farmaci che autorizza l'erogazione"
* authorizingPrescription only Reference(MedicationRequestItDossierPharma)

