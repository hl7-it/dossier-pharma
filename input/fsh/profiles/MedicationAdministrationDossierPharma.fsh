Profile: MedicationAdministrationDossierPharma
Parent: MedicationAdministration
Id: MedicationAdministration-it-dossierPharma
Title:    "MedicationAdministration - Dossier Farmaceutico"
Description: "Profilo MedicationAdministration per Dossier Farmaceutico"


* . ^short = "Descrive l'evento in cui il paziente consuma o riceve la somministrazione del farmaco"

* medication[x] 
* medicationReference only Reference ( MedicationItDossierPharma )
  
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
// * subject.identifier 1..
// * subject.identifier.system 1..
// * subject.identifier.system = $CF (exactly)
// * subject.identifier.value 1..
* subject.identifier.value ^short = "Codice Fiscale"
* subject.display 0.. 

* effective[x] ^short = "Inzio e Fine della somministrazione"
* effectivePeriod.start ^short = "Inizio della somministrazione/infusione del farmaco"
* effectivePeriod.end ^short = "Fine della somministrazione/infusione del farmaco"
// TODO - Inserire all'interno del profilo lo start e l'end per la terapia continuativa e non continuativa
