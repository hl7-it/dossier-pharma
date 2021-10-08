Profile: AlimentazioneDossierFarmaceutico
Parent: Bundle
Id: AlimentazioneDossierFarmaceutico
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione del Bundle per l'esecuzione della transazione AlimentazioneDossierFarmacutico</a></div>"
* ^url = "https://example.org/fhir/StructureDefinition/AlimentazioneDossierFarmaceutico"
* ^status = #draft
* type = #transaction (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    sliceProvenance 1..* and
    sliceMedication 1..*
* entry[sliceProvenance].resource only ProvenanceForDossier
* entry[sliceProvenance].search ..0
* entry[sliceProvenance].request 1..
* entry[sliceProvenance].request.method = #POST (exactly)
* entry[sliceMedication].resource 1..
* entry[sliceMedication].resource only MedicationDispenseItDossierPharma or MedicationRequestItDossierPharma
* entry[sliceMedication].search ..0
* entry[sliceMedication].request 1..
* entry[sliceMedication].request.method = #POST (exactly)