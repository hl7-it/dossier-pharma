Profile: ProvenanceForDossier
Parent: Provenance
Id: ProvenanceForDossier
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione della Provenance per il Dossier Farmaceutico</a></div>"
* ^status = #draft
// * target only MedicationRequestItDossierPharma or MedicationDispenseItDossierPharma
// * target ^fixedReference.type = "MedicationDispense"
* agent.who.identifier 1..
* agent.who.identifier.system 1..
* agent.who.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.2.1" (exactly)
* agent.who.identifier.value 1..
* agent.who.identifier.value ^short = "Da valorizzare con il codice delle regione secondo codifica ISTAT"
* agent.onBehalfOf 1..
* agent.onBehalfOf.identifier 1..
* agent.onBehalfOf.identifier.system 1..
* agent.onBehalfOf.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.2.1" (exactly)
* agent.onBehalfOf.identifier.value 1..
* entity 1..
* entity.role = #derivation (exactly)
* entity.what.identifier 1..
* entity.what.identifier.system 1..
* entity.what.identifier.system ^short = "[DocumentEntry.repositoryUniqueId]"
* entity.what.identifier.system ^definition = "Veicola il riferimento al DocumentEntry.RepositoryUniqueId in cui è presente il documento CDA R2 da cui è stata estratta la risorsa"
* entity.what.identifier.value 1..
* entity.what.identifier.value ^short = "[DocumentEntry.uniqueId]"
* entity.what.identifier.value ^definition = "Veicola il riferimento al DocumentEntry.DocumentUniqueId dell documento CDA R2 da cui è stata estratta la risorsa pubblicato sul FSE"