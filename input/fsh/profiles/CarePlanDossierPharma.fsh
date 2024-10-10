Profile:  CarePlanItDossierPharma
Parent:   CarePlan
Id:       CarePlan-it-dossierPharma
Title:    "CarePlan - Dossier Farmaceutico"
Description: "Rappresentazione del piano terapeutico tramite il profilo CarePlan"
//=================================================================

* ^status = #draft
* identifier 1..1
* identifier.system from VsOidPT (required)
* identifier ^short = "ID piano terapeutico"
* identifier.value ^short = "Identificativo univoco del Piano Terapeutico"

* activity 1..*
* activity.detail.product[x] 
* activity.detail.product[x] 1..1
* activity.detail.productReference only Reference ( MedicationItDossierPharma )
* activity.detail.productCodeableConcept 0..1


* activity.detail.productCodeableConcept.coding 1.. 
  * system 1.. 
  * code 1.. 
  * display 
  
* activity.detail.productCodeableConcept.coding ^slicing.discriminator.type = #pattern
* activity.detail.productCodeableConcept.coding ^slicing.discriminator.path = "$this"
* activity.detail.productCodeableConcept.coding ^slicing.ordered = false
* activity.detail.productCodeableConcept.coding ^slicing.rules = #open
* activity.detail.productCodeableConcept.coding contains
    ATC 0..1 and AIC 0..1 and
    gruppoEquivalenza 0..1  and eccezioni 0..1

* activity.detail.productCodeableConcept.coding[ATC] 
* activity.detail.productCodeableConcept.coding[ATC] ^sliceName = "ATC"
* activity.detail.productCodeableConcept.coding[ATC] from $vs-atc
* activity.detail.productCodeableConcept.coding[AIC] from $vs-aic
* activity.detail.productCodeableConcept.coding[gruppoEquivalenza] from  $vs-gruppo-equivalenza
* activity.detail.productCodeableConcept.coding[eccezioni] = $v3-NullFlavor#UNK
* activity.detail.productCodeableConcept.text ^short = "Descrizione testuale del farmaco"

* author 1..1 
* author only Reference ( MedicoPrescrittore )
* author ^short = "Medico prescrittore del piano terapeutico"


* created 1..1
* created ^short = "Data della prescrizione del piano terapeutico"

* period 1..1
* period ^short = "Durata prevista della terapia"
* period.start 1..1
* period.end 1..1 

* activity.detail.dailyAmount 1..1
* activity.detail.dailyAmount ^short = "Assunzione giornaliera"

* activity.detail.quantity 1..1
* activity.detail.quantity ^short = "Dose per singola assunzione"