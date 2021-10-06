Profile: AggiornamentoDossierFarmaceutico
Parent: Bundle
Id: AggiornamentoDossierFarmaceutico
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione del Bundle per l'esecuzione della transazione AggiornamentoDossierFarmaceutico</a></div>"
* ^url = "https://example.org/fhir/StructureDefinition/AggiornamentoDossierFarmaceutico"
* ^status = #draft
* type = #transaction (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    sliceProvenance 1..* and
    sliceMedication 1..*
* entry[sliceProvenance].resource 1..
* entry[sliceProvenance].resource only ProvenanceForDossier
* entry[sliceProvenance].search ..0
* entry[sliceProvenance].request 1..
* entry[sliceProvenance].request.method ^short = "POST | PUT | DELETE"
* entry[sliceProvenance].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[sliceMedication].resource 1..
* entry[sliceMedication].resource only DossierMedicationDispense or MedicationRequestItDossierPharma
* entry[sliceMedication].search ..0
* entry[sliceMedication].request 1..
* entry[sliceMedication].request.method ^short = "POST | PUT | DELETE"
* entry[sliceMedication].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."