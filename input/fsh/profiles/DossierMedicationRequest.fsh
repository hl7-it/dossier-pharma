Profile: DossierMedicationRequest
Parent: MedicationRequest
Id: DossierMedicationRequest
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a>Profilazione della MedicationRequest per il Dossier Farmaceutico</a></div>"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains NRE named nre 0..*
* extension[nre] ^min = 0
* status = #"cancelled | completed" (exactly)
* intent = #order (exactly)
* intent ^short = "order"
* category 1..
* category.coding 1..1
* category.coding.system 1..
* category.coding.system = "https://loinc.org/" (exactly)
* category.coding.code 1..
* category.coding.code = #57833-6 (exactly)
* medication[x] only CodeableConcept
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.ordered = false
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains
    ATC 0..1 and AIC 0..1 and
    gruppoEquivalenza 0..1
* medication[x].coding[ATC] ^sliceName = "ATC"
* medication[x].coding[ATC].system 1..
* medication[x].coding[ATC].system = "urn:oid:2.16.840.1.113883.6.73" (exactly)
* medication[x].coding[ATC].code 1..
* medication[x].coding[ATC].display 1..
* medication[x].coding[AIC].system 1..
* medication[x].coding[AIC].system = "urn:oid:2.16.840.1.113883.2.9.6.1.5" (exactly)
* medication[x].coding[AIC].code 1..
* medication[x].coding[AIC].display 1..
* medication[x].coding[gruppoEquivalenza].system 1..
* medication[x].coding[gruppoEquivalenza].system = "urn:oid:2.16.840.1.113883.2.9.6.1.51" (exactly)
* medication[x].coding[gruppoEquivalenza].code 1..
* medication[x].coding[gruppoEquivalenza].display 1..
* medication[x].text 1..
* medication[x].text ^short = "[Descrizione principio attivo del farmaco]"
* subject only Reference(Patient)
* subject ^type.aggregation = #referenced
* subject.type 1..
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.system 1..
* subject.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2" (exactly)
* subject.identifier.value 1..
* subject.identifier.value ^short = "Veicola il CF"
* subject.display 1..
* subject.display = "cf" (exactly)
* authoredOn 1..
* authoredOn = "2021-05-31" (exactly)
* requester 1..
* requester only Reference(MedicoPrescrittore)
* requester ^type.aggregation = #contained
* requester.reference 1..
* performer only Reference(Organization or Patient or Device or RelatedPerson or CareTeam)
* recorder only Reference(Practitioner)
* recorder.type 1..
* recorder.type = "Practitioner" (exactly)
* recorder.type ^short = "Medico Sostituto"
* recorder.identifier 1..
* recorder.identifier.system 1..
* recorder.identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2" (exactly)
* recorder.identifier.value 1..
* recorder.identifier.value = "[CF medico sostituto]" (exactly)
* reasonCode ..1
* reasonCode.coding ^slicing.description = "Una istanza per eventuale nota AIFA, una istanza per eventuale codice diagnosi"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    notaAIFA 0..1 and
    codiceDiagnosi 0..1
* reasonCode.coding[notaAIFA].system 1..
* reasonCode.coding[notaAIFA].system = "urn:oid:2.16.840.1.113883.2.9.6.1.24" (exactly)
* reasonCode.coding[notaAIFA].code 1..
* reasonCode.coding[notaAIFA].code ^short = "nota AIFA"
* reasonCode.coding[codiceDiagnosi].system 1..
* reasonCode.coding[codiceDiagnosi].system = "urn:oid:2.16.840.1.113883.6.103" (exactly)
* reasonCode.coding[codiceDiagnosi].code 1..
* reasonCode.coding[codiceDiagnosi].code = #"[ICD9-CM diagnosi]" (exactly)
* reasonCode.coding[codiceDiagnosi].display 1..
* reasonCode.coding[codiceDiagnosi].display = "[Descrizione diagnosi]" (exactly)
* insurance ^slicing.discriminator.type = #value
* insurance ^slicing.discriminator.path = "identifier.system"
* insurance ^slicing.rules = #open
* insurance contains
    esenzioneNazionale 0..* and
    esenzioneRegionale 0..*
* insurance[esenzioneNazionale].identifier 1..
* insurance[esenzioneNazionale].identifier.system 1..
* insurance[esenzioneNazionale].identifier.system = "urn:oid:2.16.840.1.113883.2.9.6.1.22" (exactly)
* insurance[esenzioneNazionale].identifier.value 1..
* insurance[esenzioneRegionale].identifier 1..
* insurance[esenzioneRegionale].identifier.system 1..
* insurance[esenzioneRegionale].identifier.system ^short = "Deve essere valorizzato con urn:oid:2.16.840.1.113883.2.9.2.[REGIONE].6.22"
* insurance[esenzioneRegionale].identifier.value 1..
* dispenseRequest 1..
* dispenseRequest.initialFill.quantity 1..
* dispenseRequest.initialFill.duration 1..
* dispenseRequest.quantity 1..
* substitution.allowed[x] only boolean
* substitution.reason.coding 1..1
* substitution.reason.coding.system 1..
* substitution.reason.coding.system = "2.16.840.1.113883.2.9.6.1.52" (exactly)
* substitution.reason.coding.code 1..
* substitution.reason.coding.code = #"[codici non sostituibilita farmaco]" (exactly)