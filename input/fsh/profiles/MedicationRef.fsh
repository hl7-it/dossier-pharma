Profile: MedicationRef
Parent: Medication
Id: Medication-it-dossierPharma
Title: "Medication (code and identifier)"
Description: "Risorsa Medication usata per veicolare possibili carrier identifier"
* ^status = #draft
* identifier 0..1 MS //era obbligatorio
* code 1..1

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open

* code.coding contains atc 0..1 and aic 0..1
  and gruppoEquivalenza 0..1  and eccezioni 0..1  
* code.coding[atc] MS
* code.coding[atc] ^sliceName = "atc"
* code.coding[atc].system = $atc (exactly)
* code.coding[aic].system = $aic (exactly)

* code.coding[gruppoEquivalenza].system = $gruppo-equivalenza (exactly)
* code.coding[eccezioni].system = $v3-NullFlavor (exactly)
* code.coding[eccezioni].code = #UNK

* batch 0..1
* batch.lotNumber 0..1
