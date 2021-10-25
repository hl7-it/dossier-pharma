Profile: MedicoPrescrittore
Parent: Practitioner
Id: MedicoPrescrittore
* ^status = #draft
* identifier 1..
* identifier.system 1..
// * identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2" 
* identifier.value 1..
* identifier.value ^short = "CF del Medico Titolare"
* qualification ^slicing.discriminator.type = #type
* qualification ^slicing.discriminator.path = "$this"
* qualification ^slicing.rules = #open
* qualification contains
    CodSpecializzazione 1..1 and
    Disciplina 0..1
* qualification[CodSpecializzazione].code ^short = "Codice specializzazione"
* qualification[CodSpecializzazione].code ^definition = "Codice specializzazione"
* qualification[CodSpecializzazione].code.coding 1..
* qualification[CodSpecializzazione].code.coding.system 1..
* qualification[CodSpecializzazione].code.coding.system = $specializ-medico (exactly)
* qualification[CodSpecializzazione].code.coding.code 1..
* qualification[CodSpecializzazione].issuer 1..
* qualification[CodSpecializzazione].issuer.identifier 1..
* qualification[CodSpecializzazione].issuer.identifier.system 1..
// * qualification[CodSpecializzazione].issuer.identifier.system only urn:oid:2.16.840.1.113883.2.9.4.1.1 or urn:oid:2.16.840.1.113883.2.9.4.2.1
* qualification[CodSpecializzazione].issuer.identifier.value 1..
* qualification[CodSpecializzazione].issuer.identifier.value ^definition = "Per i medici SASN veicola 001, peri medici non SASN veicola il codice FLS11 del medico prescrittore"
* qualification[Disciplina].code ^short = "Codice disciplina"
* qualification[Disciplina].code ^definition = "Codice disciplina"
* qualification[Disciplina].code.coding.system 1..
* qualification[Disciplina].code.coding.system ^definition = "[codice della disciplina del medico secondo codifica che verrà definita a livello nazionale]"
* qualification[Disciplina].code.coding.code 1..