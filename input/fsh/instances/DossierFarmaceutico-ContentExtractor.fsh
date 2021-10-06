Instance: DossierFarmaceutico-ContentExtractor
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>TESTO per dossier Farmaceutico generale</a></div>"
* url = "http://example.org/fhir/CapabilityStatement/DossierFarmaceutico_ContentExtractor"
* name = "DossierFarmaceutico_ContentExtractor"
* title = "Dossier Farmaceutico - Content Extractor (client)"
* status = #draft
* experimental = false
* date = "2021-09-03"
* description = "CapabilityStatement per il Content Extractor definito nelle specifiche del Dossier Farmaceutico"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #application/fhir+json
* rest.mode = #client
* rest.security.cors = false
* rest.security.description = "IUA"
* rest.interaction.code = #transaction
* rest.interaction.documentation = "http://example.org/fhir/StructureDefinition/AlimentazioneDossierFarmaceutico"