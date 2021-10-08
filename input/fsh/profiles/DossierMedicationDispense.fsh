Profile: MedicationDispenseItDossierPharma
Parent: MedicationDispense
Id:       MedicationDispense-it-dossierPharma
Title:    "MedicationDispense - Dossier Farmaceutico"
Description: "Profilo MedicationDispense per Dossier Farmaceutico"
//=================================================================

/* === TO DO 
- add vocabulary bindings instead of filtering per coding.system
- 
=== */


* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione della MedicationDispense per il Dossier Farmaceutico</a></div>"
* status MS
* medicationCodeableConcept
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.ordered = false
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    ATC 0..1 and AIC 0..1 and
    gruppoEquivalenza 0..1
* medicationCodeableConcept.coding[ATC] ^sliceName = "ATC"
* medicationCodeableConcept.coding[ATC].system 1..
* medicationCodeableConcept.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* medicationCodeableConcept.coding[ATC].code 1..
* medicationCodeableConcept.coding[ATC].display 1..
* medicationCodeableConcept.coding[AIC].system 1..
* medicationCodeableConcept.coding[AIC].system = "urn:oid:2.16.840.1.113883.2.9.6.1.5" (exactly)
* medicationCodeableConcept.coding[AIC].code 1..
* medicationCodeableConcept.coding[AIC].display 1..
* medicationCodeableConcept.coding[gruppoEquivalenza].system 1..
* medicationCodeableConcept.coding[gruppoEquivalenza].system = "urn:oid:2.16.840.1.113883.2.9.6.1.51" (exactly)
* medicationCodeableConcept.coding[gruppoEquivalenza].code 1..
* medicationCodeableConcept.coding[gruppoEquivalenza].display 1..
* medicationCodeableConcept.text ^short = "Descrizione testuale del farmaco"
* subject MS
* subject only Reference(PatientItBase)
* subject.type 0..
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.system 1..
* subject.identifier.system = "http://hl7.it/sid/codiceFiscale" (exactly)
* subject.identifier.value 1..
* subject.identifier.value ^short = "Codice Fiscale"
* subject.display 0.. 
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