Extension: MedicoTitolare
Id: MedicoTitolare
* ^url = "https://example.org/fhir/StructureDefinition/MedicoTitolare"
* ^experimental = false
* ^context[+].type = #fhirpath
* ^context[=].expression = "MedicationRequest"
* . ^short = "Estensione per veicolare informazioni sul medico titolare"
* . ^definition = "Estensione per veicolare informazioni sul medico titolare associato alla ricetta elettronica che ha generato la risorsa FHIR per il Dossier"
* value[x] 1..
* value[x] only Reference(MedicoPrescrittore)
