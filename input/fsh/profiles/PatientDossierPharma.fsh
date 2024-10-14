Profile: PatientDossierPharma
Parent: Patient
Id: patient-it-dossierPharma
Title: "Patient - Dossier Farmaceutico"
Description: "Descrizione delle informazioni del paziente nei documenti FHIR."
* . ^short = "Patient Dossier Farmaceutico"

* insert SetFmmandStatusRule ( 1, trial-use)
* insert ImposeProfile ( $Patient-eu-lab )

* extension contains 
    BirthPlaceIta named luogoNascita 0..1 and 
    ExtRecordCertification named certificazione 0..1 and
    ExtCodeableBirthPlace named luogoNascitaCodeable 0..* and
    $patient-citizenship named cittadinanza 0..1 and
    ExtProfessionePaziente named professione 0..1 and
    ExtTitoloStudioPaziente named titoloStudio 0..1
* extension[luogoNascita] ^short = "Luogo di nascita." 
* extension[certificazione] ^short = "Indica che i dati presenti nella risorsa sono stati certificati da una specifica entità"
* extension[certificazione] ^definition = "Indica che i dati presenti nella risorsa (non quelli referenziati) sono stati certificati da una specifica entità"
* extension[luogoNascitaCodeable] ^binding.strength = #example
* extension[luogoNascitaCodeable] ^binding.valueSet = $istat-luogoNascita
* extension[luogoNascitaCodeable] ^short = "Codice del comune e/o dello stato di nascita"
* extension[luogoNascitaCodeable] ^definition = "Codice del comune e/o dello stato di nascita del paziente. In via eccezionle, può essere usato per indicare comune e/o stato di nascita in forma testuale"
* extension[cittadinanza] ^binding.strength = #example
* extension[cittadinanza] ^binding.valueSet = $istat-cittadinanza
* extension[cittadinanza] ^short = "Cittadinanza"
* extension[cittadinanza] ^definition = "Indica la cittadinanza del cittadino attraverso lo stato di provenienza"
* extension[professione] ^binding.strength = #preferred
* extension[professione] ^binding.valueSet = $istat-professione
* extension[professione] ^short = "Professione"
* extension[professione] ^definition = "Indica la professione del cittadino come semplice CodeableConcept"
* extension[professione] ^mustSupport = false
* extension[titoloStudio] ^binding.strength = #example
* extension[titoloStudio] ^binding.valueSet = $istat-titoloStudio
* extension[titoloStudio] ^short = "Titolo di studio"
* extension[titoloStudio] ^definition = "Indica il titolo di studio del cittadino come semplice CodeableConcept"
* extension[titoloStudio] ^mustSupport = false

* identifier  
* identifier 1..
* identifier.extension contains ExtRecordCertification named certificazioneId 0..1
* identifier.extension[certificazioneId] ^short = "Identificativo certificato (tipicamente per CF)"
* identifier.extension[certificazioneId] ^definition = "Indica che questo identificativo è stato certificato. Usato tipicamente per il Codice Fiscale."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificativo del paziente."
* identifier.value 1..  
* identifier.value ^short = "ID del paziente (e.g. Codice Fiscale)."
* identifier.value ^definition = "Identifictivo del paziente."
* identifier.type from $tipoIdentificatore (extensible)
* identifier contains
    codiceFiscale 0..1   and
    anpr 0..1 and
    idRegionale 0..1 and
    codiceENI 0..1 and
    codiceANA 0..1 and
    tesseraTEAM 0..1 and
    codiceSTP 0..1
* identifier[codiceFiscale] ^short = "Codice Fiscale."
* identifier[codiceFiscale].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceFiscale].system 1..  
* identifier[codiceFiscale].system = $CF (exactly)
* identifier[codiceFiscale].value ^short = "Valore dell'identifier."
* identifier[codiceFiscale].value obeys pat-id-cf-1
* identifier[anpr] ^short = "Identificativo del paziente nell'Anagrafe nazionale della popolazione residente."
* identifier[anpr].system ^short = "Namespace per il valore dell'identifier."
* identifier[anpr].system 1..  
* identifier[anpr].system = $anpr
* identifier[idRegionale] ^short = "Identificativo Regionale."
* identifier[idRegionale].system ^short = "Namespace per il valore dell'identifier."
* identifier[idRegionale].system 1..  
* identifier[idRegionale].system from $uri-idRegionali (required)
* identifier[codiceENI] ^short = "Codice ENI."
* identifier[codiceENI].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceENI].system 1..  
* identifier[codiceENI].system = "urn:oid:2.16.840.1.113883.2.9.4.3.18"
* identifier[codiceANA] ^short = "Codice ANA."
* identifier[codiceANA].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceANA].system = "urn:oid:2.16.840.1.113883.2.9.4.3.15"
* identifier[codiceANA].system 1..  
* identifier[tesseraTEAM] ^short = "Tessera TEAM."
* identifier[tesseraTEAM].system ^short = "Namespace per il valore dell'identifier."
* identifier[tesseraTEAM].system = "urn:oid:2.16.840.1.113883.2.9.4.3.7"
* identifier[tesseraTEAM].system 1..  
* identifier[codiceSTP] ^short = "Codice STP." 
* identifier[codiceSTP].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceSTP].system 1..  
* identifier[codiceSTP].system from $uri-idStp (required)
* name 1..  
* name.family  
* name.given 
* name obeys it-pat-name-1
* name ^short = "Nome associato al paziente."

* telecom  
* gender  
* birthDate 1..

* address only AddressItBase
* managingOrganization ^short = "Organizzazione a cui è lasciata la custodia del dei dati del paziente."
* managingOrganization only Reference(Organization)
* address only AddressItBase
  
* generalPractitioner ^slicing.discriminator.type = #profile
* generalPractitioner ^slicing.discriminator.path = "$this.resolve()"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner ^short = "Principale fornitore di cure del paziente."
* generalPractitioner contains
    mmgPlsRole 0..*   and
    mmgPls 0..*   and
    aziendaAssistenza 0..*  
* generalPractitioner[mmgPlsRole] only Reference(MedicoPrescrittore)
* generalPractitioner[mmgPlsRole] ^short = "Reference al ruolo MMG/PLS."
* generalPractitioner[mmgPls] ^short = "Reference al MMG/PLS."
* generalPractitioner[mmgPls] only Reference(Practitioner)
* generalPractitioner[aziendaAssistenza] ^short = "Reference all'azienda che assiste il paziente."
* generalPractitioner[aziendaAssistenza] only Reference(Organization)


Invariant: pat-id-cf-1
Description: "Il Codice Fiscale deve essere di 16 caratteri alfanumerici (3 per il cognome; 3 per il nome; 2 caratteri numerici per l'anno di nascita; 1 per il mese di nascita; 2 caratteri numerici per il giorno di nascita ed il sesso; 4 associati al Comune oppure allo Stato estero di nascita. 1 carattere di controllo."
Severity: #error
Expression: "matches('^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"
XPath: "matches(@value,'^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"

Invariant: it-pat-name-1
Description: "Il nome deve contenere almeno una delle aprti che compongono il nome (nome, cognome)"
Severity: #warning
Expression: "family.exists() or given.exists()"
XPath: "f:given or f:family"