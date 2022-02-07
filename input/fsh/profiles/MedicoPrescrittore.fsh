Profile: MedicoPrescrittore
Parent: http://hl7.it/fhir/StructureDefinition/PractitionerRole-it-base
Id: PractitionerRole-prescrittore-it-dossierPharma
Title:    "PractitionerRole - Medico Prescrittore"
Description: "Profilo di PractitionerRole usato per descrivere il Medico Prescrittore per gli scopi del Dossier Farmaceutico"
//=================================================================

// To do aggiungere binding per ruoli da indicare
// e per specialità

* . ^short = "Medico Prescrittore"
* code from VsRuoloPrerscrittore (preferred)
*  specialty ^short = "Specialità"

Instance: MedicoPrescrittore001
InstanceOf: MedicoPrescrittore
Description: "Example of MedicoPrescrittore"
* code = CS_V3ItRoles#MMG "Medico Medicina Generale"
* specialty.coding = http://snomed.info/sct#394579002 "Cardiology"
