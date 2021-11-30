Profile: MedicationRef
Parent: Medication
Id: Medication-it-dossierPharma
Title: "Medication (code and identifier)"
Description: "Risorsa Medication usata per veicolare possibili carrier identifier"
* ^status = #draft
* identifier 0..1 MS //era obbligatorio
* code 1..1

* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "system"
* code ^slicing.ordered = false
* code ^slicing.rules = #open

* code contains ATC 0..1 and AIC 0..1
//and gruppoEquivalenza 0..1  and eccezioni 0..1  
* code[ATC] MS
* code[ATC] ^sliceName = "ATC"
//* code[ATC].system = $ATC (exactly)
//* code[AIC].system = $AIC (exactly)

//* code[gruppoEquivalenza].system = $gruppo-equivalenza (exactly)
//* code[eccezioni].system = $v3-NullFlavor (exactly)
//* code[eccezioni].code = #UNK
* batch 0..1
* batch.lotNumber 0..1
