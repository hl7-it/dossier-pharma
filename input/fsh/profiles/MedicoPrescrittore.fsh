Profile: MedicoPrescrittore
Parent: http://hl7.it/fhir/StructureDefinition/PractitionerRole-it-base
Id: PractitionerRole-prescrittore-it-dossierPharma
Title:    "PractitionerRole - Medico Prescrittore"
Description: "Rappresentazione del ruolo del medico tramite il profilo PractitionerRole"
//=================================================================

// To do aggiungere binding per ruoli da indicare
// e per specialità

* . ^short = "Medico Prescrittore"
* code from $vs-csitrole (preferred)
*  specialty ^short = "Specialità"
