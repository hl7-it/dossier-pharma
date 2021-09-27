Extension: NRE
Id: NRE
* ^url = "https://example.org/fhir/StructureDefinition/NRE"
* ^experimental = false
* ^context[0].type = #fhirpath
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #fhirpath
* ^context[=].expression = "MedicationRequest"
* . ^short = "Estensione per veicolare codice NRE"
* . ^definition = "Estensione per veicolare codice NRE associato alla ricetta elettronica che ha generato la risorsa FHIR per il Dossier"
* value[x] 1..
* value[x] only Identifier
* value[x].system 1..
* value[x].system = "urn:oid:2.16.840.1.113883.2.9.4.3.8" (exactly)
* value[x].value 1..