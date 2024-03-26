Profile: ProvenanceDossier
Parent: Provenance
Id:       Provenance-it-dossierPharma
Title:    "Provenance - Dossier Farmaceutico"
Description: "Profilo Provenance per Dossier Farmaceutico"


// * ^text.status = #additional
// * ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione della Provenance per il Dossier Farmaceutico</a></div>"
// * ^status = #draft
* target only Reference (MedicationRequestItDossierPharma or MedicationDispenseItDossierPharma)
// * target ^fixedReference.type = "MedicationDispense"

* recorded ^short = "Quando è avvenuto il  processamento"
* agent.who only Reference ($Organization-it-base)
* agent.who.identifier 1..
// * agent.who.identifier.system 1..
// * agent.who.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.2.1" (exactly)
// * agent.who.identifier.value 1..
// * agent.who.identifier.value ^short = "Da valorizzare con il codice delle regione secondo codifica ISTAT"
* agent.onBehalfOf ^short = "Da valorizzare con il codice della regione di assistenza secondo codifica Ministero della Salute"
* agent.onBehalfOf 0..
* agent.onBehalfOf only Reference ($Organization-it-base) 
* agent.onBehalfOf.identifier 1..
* agent.onBehalfOf.identifier.system 1..
* agent.onBehalfOf.identifier.system = $minsan-regione
* agent.onBehalfOf.identifier.value 1..
* entity 1..
* entity.role = #derivation (exactly)
* entity.what only Reference (DocumentManifest)
* entity.what.identifier 0.. 
* entity.what.identifier.system 1..
* entity.what.identifier.system ^short = "[DocumentEntry.repositoryUniqueId]"
* entity.what.identifier.system ^definition = "Veicola il riferimento al DocumentEntry.RepositoryUniqueId in cui è presente il documento CDA R2 da cui è stata estratta la risorsa"
* entity.what.identifier.value 1..
* entity.what.identifier.value ^short = "[DocumentEntry.documentUniqueId]"
* entity.what.identifier.value ^definition = "Veicola il riferimento al DocumentEntry.documentUniqueId del documento CDA R2 da cui è stata estratta la risorsa pubblicato sul FSE"
