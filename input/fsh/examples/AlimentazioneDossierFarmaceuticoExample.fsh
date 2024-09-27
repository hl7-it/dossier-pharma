Instance: Alimentazione-Dossier-Esempio
InstanceOf: AlimentazioneDossierFarmaceutico
Title: "Bundle Alimentazione Dossier Farmaceutico"
Description: "Esempio di Alimentazione del Dossier Farmaceutico"
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-3de9d419d27e"
* type = #transaction
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:22571f37-4ac6-4025-a6b7-afa05c2f5f3b" 
* entry[=].resource = MedicationRequestDossierExample005
* entry[=].request.method = #POST
* entry[=].request.url = "/MedicationRequest"
// * entry[+].fullUrl = "urn:uuid:22571f37-4ac6-4025-a6b7-afa05c2f5f3c" 
// * entry[=].resource = MedicationDispense-Dossier-Esempio
// * entry[=].request.method = #POST
// * entry[=].request.url = "/MedicationDispense"
