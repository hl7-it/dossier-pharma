Instance: MedicoPrescrittoreExample01
InstanceOf: MedicoPrescrittore
Title: "Medico ospedaliaro prescrittore"
Description: "Esempio di medico ospedaliero Prescrittore"
Usage: #example

// * id = "PractitionerRole-prescrittore-it-dossierPharma-ex001"
// * identifier[0].system = $CF
// * identifier[0].value =  "PLLDSR80E47A462P"
* practitioner = Reference(Practitioner/PractitionerExample)
* organization = Reference(Organization/Organization-Dossier-Esempio)
* code = CsItRoleCode#MO "medico ospedaliero"
* specialty.coding = $sct#419192003 "Internal medicine"


Instance: MedicoPrescrittoreExample02
InstanceOf: MedicoPrescrittore
Title: "Medico di medicina generale"
Description: "Esempio di medico di medicina generale"
Usage: #example
* practitioner = Reference(Practitioner/PractitionerExample02)
* organization = Reference(Organization/Organization-Dossier-Esempio)
* code = CsItRoleCode#MMG  "medico medicina generale"
* specialty.coding = $sct#394802001 "General medicine"

