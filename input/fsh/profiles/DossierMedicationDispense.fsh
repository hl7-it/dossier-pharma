Profile: DossierMedicationDispense
Parent: MedicationDispense
Id: DossierMedicationDispense
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione della MedicationDispense per il Dossier Farmaceutico</a></div>"
* ^url = "http://example.org/fhir/StructureDefinition/DossierMedicationDispense"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains NRE named myExtension 0..*
* extension[myExtension] ^min = 0
* status = #completed (exactly)
* medication[x] only CodeableConcept
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains  ATC 0..1 and AIC 0..1
* medication[x].coding[ATC] ^sliceName = "ATC"
* medication[x].coding[ATC].system 1..
* medication[x].coding[ATC].system = "urn:oid:2.16.840.1.113883.6.73" (exactly)
* medication[x].coding[ATC].code 1..
* medication[x].coding[ATC].display 1..
* medication[x].coding[AIC] ^sliceName = "AIC"
* medication[x].coding[AIC].system 1..
* medication[x].coding[AIC].system = "urn:oid:2.16.840.1.113883.2.9.6.1.5" (exactly)
* medication[x].coding[AIC].code 1..
* medication[x].coding[AIC].display 1..
* medication[x].text 1..
* medication[x].text ^short = "[Descrizione principio attivo del farmaco]"
* subject 1..
* subject.type 1..
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.system 1..
* subject.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2" (exactly)
* subject.identifier.value 1..
* subject.identifier.value ^short = "Veicola il CF"
* subject.display 1..
* subject.display = "cf" (exactly)
* performer 1..
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains
    CFErogatore 1..1 and
    CodiceStrutturaErogatore 1..1 and
    ASLErogatore 1..1
* performer[CFErogatore].actor.identifier 1..
* performer[CFErogatore].actor.identifier.system 1..
* performer[CFErogatore].actor.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2" (exactly)
* performer[CFErogatore].actor.identifier.value 1..
* performer[CFErogatore].actor.identifier.value ^short = "CF dell'erogatore"
* performer[CodiceStrutturaErogatore].actor.identifier 1..
* performer[CodiceStrutturaErogatore].actor.identifier.system 1..
* performer[CodiceStrutturaErogatore].actor.identifier.system ^short = "urn:oid:2.16.840.1.113883.2.9.2.codISTATazienda/presidio/codFarm"
* performer[CodiceStrutturaErogatore].actor.identifier.value 1..
* performer[CodiceStrutturaErogatore].actor.identifier.value ^short = "Codice Struttura dell'erogatore"
* performer[ASLErogatore].actor.identifier 1..
* performer[ASLErogatore].actor.identifier.system 1..
* performer[ASLErogatore].actor.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.1" (exactly)
* performer[ASLErogatore].actor.identifier.value 1..
* performer[ASLErogatore].actor.identifier.value ^short = "Codice FLS11 dell'erogatore"
* quantity 1..
* quantity.value 1..
* quantity.value ^short = "Numero confezioni erogate"
* whenPrepared 1..
* whenPrepared ^short = "Data inizio erogazione"
* whenHandedOver 1..
* whenHandedOver ^short = "Data erogazione ricetta"
* substitution.type 1..
* substitution.type.coding 1..
* substitution.type.coding.system 1..
* substitution.type.coding.system = "urn:oid:2.16.840.1.113883.2.9.6.1.53" (exactly)
* substitution.type.coding.code 1..
* substitution.reason 1..
* substitution.reason.coding 1..
* substitution.reason.coding.system 1..
* substitution.reason.coding.system ^short = "OID flagErog"
* substitution.reason.coding.code 1..