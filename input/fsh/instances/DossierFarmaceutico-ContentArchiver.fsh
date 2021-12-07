// Instance: DossierFarmaceutico-ContentArchiver
Instance: CapabilityStatementReceiverItDossierPharma
InstanceOf: CapabilityStatement
Title: "CapabilityStatement Receiver"
Usage: #definition
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>TESTO per dossier Farmaceutico generale</a></div>"
// * url = "http://example.org/fhir/CapabilityStatement/DossierFarmaceutico_ContentArchiver"
* name = "DossierFarmaceutico_ContentArchiver"
* title = "Dossier Farmaceutico - Content Archiver (server)"
* status = #draft
* experimental = false
* date = "2021-09-03"
* description = "CapabilityStatement per il Content Archiver definito nelle specifiche del Dossier Farmaceutico"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #application/fhir+json
* rest.mode = #server
* rest.security.cors = false
* rest.security.description = "IUA"
* rest.resource[0].type = #MedicationDispense
* rest.resource[=].profile = "http://example.org/fhir/StructureDefinition/DossierMedicationDispense"
* rest.resource[=].interaction.code = #search-type
* rest.resource[=].searchParam[0].name = "subject:identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationDispense-subject"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per identificativo del paziente"
* rest.resource[=].searchParam[+].name = "whenhandedover"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationDispense-whenhandedover"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Quando è stata erogata la ricetta"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationDispense-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per il codice AIC o ATC del farmaco erogato"
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = "http://example.org/fhir/StructureDefinition/DossierMedicationRequest"
* rest.resource[=].interaction.code = #search-type
* rest.resource[=].searchParam[0].name = "subject:identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-subject"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per identificativo del paziente"
* rest.resource[=].searchParam[+].name = "authoredon"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Quando è stata compilata la ricetta"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per il codice AIC o ATC del farmaco erogato"
* rest.resource[+].type = #Provenance
* rest.resource[=].profile = "http://example.org/fhir/StructureDefinition/ProvenanceDossier"
* rest.resource[=].interaction.code = #search-type
* rest.resource[=].searchParam[0].name = "target"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-target"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare in base alle risorse associate"
* rest.resource[=].searchParam[+].name = "entity:identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-entity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "permette di ricercare in base ai metadati necessari per accedere ad un documento nel profilo XDS definito da IHE. In particolare deve veicolare il documentEntry.repositoryUniqueId ed il documentEntry.UniqueID del documento referenziato nella risorsa Provenance (e.g. entity:identifier=RepoID|DocUniqueId)"
* rest.interaction[0].code = #search-system
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = "http://example.org/fhir/StructureDefinition/AlimentazioneDossierFarmaceutico"
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = "http://example.org/fhir/StructureDefinition/AggiornamentoDossierFarmaceutico"