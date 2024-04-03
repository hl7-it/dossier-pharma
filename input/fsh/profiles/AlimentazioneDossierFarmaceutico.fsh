Profile: AlimentazioneDossierFarmaceutico
Parent: Bundle
Id: AlimentazioneDossierFarmaceutico
Title:    "AlimentazioneDossierFarmaceutico - Dossier Farmaceutico"
Description: "Profilo AlimentazioneDossierFarmaceutico per Dossier Farmaceutico"
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione del Bundle per l'esecuzione della transazione AlimentazioneDossierFarmaceutico</a></div>"
* ^url = "https://example.org/fhir/StructureDefinition/AlimentazioneDossierFarmaceutico"
* ^status = #draft
* type = #transaction (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    sliceProvenance 0..*  and
    sliceMedication 1..* and
    slicePractitionerRole 0..* and 
    sliceLocation 0..* and
    slicePatient 0..* and 
    slicePractitioner 0..* 
* entry[sliceProvenance].resource 1..
* entry[sliceProvenance].resource only ProvenanceDossier
* entry[sliceProvenance].search ..0
* entry[sliceProvenance].request 1..
* entry[sliceProvenance].request.method ^short = "POST | PUT | DELETE"
* entry[sliceProvenance].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[sliceMedication].resource 1..
* entry[sliceMedication].resource only MedicationDispenseItDossierPharma or MedicationRequestItDossierPharma
* entry[sliceMedication].search ..0
* entry[sliceMedication].request 1..
* entry[sliceMedication].request.method ^short = "POST | PUT | DELETE"
* entry[sliceMedication].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[slicePractitionerRole].resource 1..
* entry[slicePractitionerRole].resource only MedicoPrescrittore
* entry[slicePractitionerRole].search ..0
* entry[slicePractitionerRole].request 1..
* entry[slicePractitionerRole].request.method ^short = "POST | PUT | DELETE"
* entry[slicePractitionerRole].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[sliceLocation].resource 1..
* entry[sliceLocation].resource only LocationItDossierPharma
* entry[sliceLocation].search ..0
* entry[sliceLocation].request 1..
* entry[sliceLocation].request.method ^short = "POST | PUT | DELETE"
* entry[sliceLocation].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[slicePatient].resource 1..
* entry[slicePatient].resource only PatientItBase
* entry[slicePatient].search ..0
* entry[slicePatient].request 1..
* entry[slicePatient].request.method ^short = "POST | PUT | DELETE"
* entry[slicePatient].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
* entry[slicePractitioner].resource 1..
* entry[slicePractitioner].resource only PractitionerBaseIt
* entry[slicePractitioner].search ..0
* entry[slicePractitioner].request 1..
* entry[slicePractitioner].request.method ^short = "POST | PUT | DELETE"
* entry[slicePractitioner].request.method ^definition = "Dev’essere valorizzato con “PUT” nel caso di aggiornamento della risorsa, con “DELETE” nel caso di cancellazione della risorsa. Nel caso in cui nel replace sia necessario aggiungere delle risorse che prima non erano referenziate dalla Provenance deve essere valorizzato con “POST”."
