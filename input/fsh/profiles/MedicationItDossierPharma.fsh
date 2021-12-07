Profile: MedicationItDossierPharma
Parent: Medication
Id: Medication-it-dossierPharma
Title: "Medication - Dossier Farmaceutico"
Description: "Risorsa Medication usata per veicolare possibili carrier identifier"
* ^status = #draft
* identifier 0..1 MS //era obbligatorio
* code 1..1



* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open

* code.coding contains atc 0..1 and aic 0..1
  and gruppoEquivalenza 0..1  and eccezioni 0..1  
* code.coding[atc] MS
* code.coding[atc] ^sliceName = "atc"
* code.coding[atc] from $vs-atc
* code.coding[aic] from $vs-aic

* code.coding[gruppoEquivalenza] from  $vs-gruppo-equivalenza
* code.coding[eccezioni] = $v3-NullFlavor#UNK

* batch 0..1
* batch.lotNumber 0..1
  * ^short = "Numero di lotto"
