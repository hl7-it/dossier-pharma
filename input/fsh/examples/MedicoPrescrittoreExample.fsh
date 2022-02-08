Instance: MedicoPrescrittoreExample01
InstanceOf: MedicoPrescrittore
Title: "Medico ospedaliaro prescrittore"
Usage: #example

* id = "PractitionerRole-prescrittore-it-dossierPharma-ex001"
* identifier[0].system = $CF
* identifier[0].value =  "PLLDSR80E47A462P"
* practitioner = Reference(Practitioner/PractitionerExample)
* organization = Reference(Organization/asl-020101)
* code = CS_V3ItRoles#MO "medico ospedaliero"
* specialty.coding = http://snomed.info/sct#419192003 	"Internal medicine"