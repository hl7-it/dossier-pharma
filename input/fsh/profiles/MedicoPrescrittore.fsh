Profile: MedicoPrescrittore
Parent: http://hl7.it/fhir/StructureDefinition/PractitionerRole-it-base
Id: PractitionerRole-prescrittore-it-dossierPharma
Title:    "PractitionerRole - Medico Prescrittore"
Description: "Profilo di PractitionerRole usato per descrivere il Medico Prescrittore per gli scopi del Dossier Farmaceutico"
//=================================================================

// To do aggiungere binding per ruoli da indicare
// e per specialità

* . ^short = "Medico Prescrittore"
* code from VsRuoloPrescrittore (preferred)
*  specialty ^short = "Specialità"
