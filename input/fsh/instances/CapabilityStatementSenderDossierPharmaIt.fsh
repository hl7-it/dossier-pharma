Instance: CapabilityStatementSenderDossierPharmaIt
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://hl7.it/fhir/dossier-pharma/CapabilityStatement/CapabilityStatementSenderDossierPharmaIt"
* name = "DossierFarmaceutico_Sender"
* title = "Dossier Farmaceutico - Sender (client)"
* status = #draft
* experimental = false
* date = "2021-12-13"
* description = "CapabilityStatement per il Sender definito nelle specifiche del Dossier Farmaceutico"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml

* rest.mode = #client

// --------------------------
// MedicationDispense
// --------------------------
* rest.resource[0].type = #MedicationDispense
* rest.resource[=].profile = Canonical(MedicationDispenseItDossierPharma)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam[0].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationDispense-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per identificativo del paziente"
* rest.resource[=].searchParam[+].name = "whenhandedover"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationDispense-whenhandedover"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Quando è stata erogata la ricetta"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per il codice AIC o ATC del farmaco erogato"

// --------------------------
// MedicationRequest
// --------------------------
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = Canonical(MedicationRequestItDossierPharma)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
//* rest.resource[=].searchParam[0].name = "subject:identifier"
* rest.resource[=].searchParam[0].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per identificativo del paziente"
* rest.resource[=].searchParam[+].name = "authoredon"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Quando è stata compilata la ricetta"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare per il codice AIC o ATC del farmaco erogato"

// --------------------------
// Provenance
// --------------------------
* rest.resource[+].type = #Provenance
* rest.resource[=].profile = Canonical (ProvenanceDossier)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam[0].name = "target"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-target"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare in base alle risorse associate"
* rest.resource[=].searchParam[+].name = "entity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-entity"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "permette di ricercare in base ai metadati necessari per accedere ad un documento nel profilo XDS definito da IHE. In particolare deve veicolare il documentEntry.repositoryUniqueId ed il documentEntry.UniqueID del documento referenziato nella risorsa Provenance (e.g. entity:identifier=RepoID|DocUniqueId)"

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical( MedicoPrescrittore )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam.name = "identifier"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare in base all'identifier del PractitionerRole"

* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical( LocationItDossierPharma )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam.name = "identifier"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare in base all'identifier della Location"

* rest.resource[+].type = #Medication
* rest.resource[=].profile = Canonical( MedicationItDossierPharma )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Medication-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare in base all'identifier della Medication"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permette di ricercare in base al codice relativo alla Medication"

* rest.resource[+].type = #Patient
* rest.resource[=].profile = $Patient-it-base
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam[0].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: The patient's date of birth\r\n* [Person]: The person's date of birth\r\n* [RelatedPerson]: The Related Person's date of birth\r\n"
* rest.resource[=].searchParam[+].name = "deceased"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-deceased"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "This patient has been marked as deceased, or as a death date entered"
* rest.resource[=].searchParam[+].name = "address-state"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A state specified in an address\r\n* [Person]: A state specified in an address\r\n* [Practitioner]: A state specified in an address\r\n* [RelatedPerson]: A state specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: Gender of the patient\r\n* [Person]: The gender of the person\r\n* [Practitioner]: Gender of the practitioner\r\n* [RelatedPerson]: Gender of the related person\r\n"
* rest.resource[=].searchParam[+].name = "link"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-link"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "All patients linked to the given patient"
* rest.resource[=].searchParam[+].name = "language"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-language"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Language code (irrespective of use value)"
* rest.resource[=].searchParam[+].name = "address-country"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A country specified in an address\r\n* [Person]: A country specified in an address\r\n* [Practitioner]: A country specified in an address\r\n* [RelatedPerson]: A country specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "death-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-death-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The date of death has been provided and satisfies this search value"
* rest.resource[=].searchParam[+].name = "phonetic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-phonetic"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of either family or given name using some kind of phonetic matching algorithm\r\n* [Person]: A portion of name using some kind of phonetic matching algorithm\r\n* [Practitioner]: A portion of either family or given name using some kind of phonetic matching algorithm\r\n* [RelatedPerson]: A portion of name using some kind of phonetic matching algorithm\r\n"
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: The value in any kind of telecom details of the patient\r\n* [Person]: The value in any kind of contact\r\n* [Practitioner]: The value in any kind of contact\r\n* [PractitionerRole]: The value in any kind of contact\r\n* [RelatedPerson]: The value in any kind of contact\r\n"
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A city specified in an address\r\n* [Person]: A city specified in an address\r\n* [Practitioner]: A city specified in an address\r\n* [RelatedPerson]: A city specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "email"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-email"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A value in an email contact\r\n* [Person]: A value in an email contact\r\n* [Practitioner]: A value in an email contact\r\n* [PractitionerRole]: A value in an email contact\r\n* [RelatedPerson]: A value in an email contact\r\n"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of the given name of the patient\r\n* [Practitioner]: A portion of the given name\r\n"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A patient identifier"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [Person]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [Practitioner]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [RelatedPerson]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n"
* rest.resource[=].searchParam[+].name = "general-practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-general-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Patient's nominated general practitioner, not the organization that manages the record"
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Whether the patient record is active"
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A postalCode specified in an address\r\n* [Person]: A postal code specified in an address\r\n* [Practitioner]: A postalCode specified in an address\r\n* [RelatedPerson]: A postal code specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "phone"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-phone"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A value in a phone contact\r\n* [Person]: A value in a phone contact\r\n* [Practitioner]: A value in a phone contact\r\n* [PractitionerRole]: A value in a phone contact\r\n* [RelatedPerson]: A value in a phone contact\r\n"
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The organization that is the custodian of the patient record"
* rest.resource[=].searchParam[+].name = "address-use"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-use"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A use code specified in an address\r\n* [Person]: A use code specified in an address\r\n* [Practitioner]: A use code specified in an address\r\n* [RelatedPerson]: A use code specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of the family name of the patient\r\n* [Practitioner]: A portion of the family name\r\n"

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://hl7.it/fhir/StructureDefinition/Practitioner-it-base"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchParam[0].name = "address-state"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A state specified in an address\r\n* [Person]: A state specified in an address\r\n* [Practitioner]: A state specified in an address\r\n* [RelatedPerson]: A state specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: Gender of the patient\r\n* [Person]: The gender of the person\r\n* [Practitioner]: Gender of the practitioner\r\n* [RelatedPerson]: Gender of the related person\r\n"
* rest.resource[=].searchParam[+].name = "address-country"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A country specified in an address\r\n* [Person]: A country specified in an address\r\n* [Practitioner]: A country specified in an address\r\n* [RelatedPerson]: A country specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "phonetic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-phonetic"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of either family or given name using some kind of phonetic matching algorithm\r\n* [Person]: A portion of name using some kind of phonetic matching algorithm\r\n* [Practitioner]: A portion of either family or given name using some kind of phonetic matching algorithm\r\n* [RelatedPerson]: A portion of name using some kind of phonetic matching algorithm\r\n"
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: The value in any kind of telecom details of the patient\r\n* [Person]: The value in any kind of contact\r\n* [Practitioner]: The value in any kind of contact\r\n* [PractitionerRole]: The value in any kind of contact\r\n* [RelatedPerson]: The value in any kind of contact\r\n"
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A city specified in an address\r\n* [Person]: A city specified in an address\r\n* [Practitioner]: A city specified in an address\r\n* [RelatedPerson]: A city specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "communication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-communication"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "One of the languages that the practitioner can communicate with"
* rest.resource[=].searchParam[+].name = "email"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-email"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A value in an email contact\r\n* [Person]: A value in an email contact\r\n* [Practitioner]: A value in an email contact\r\n* [PractitionerRole]: A value in an email contact\r\n* [RelatedPerson]: A value in an email contact\r\n"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of the given name of the patient\r\n* [Practitioner]: A portion of the given name\r\n"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A practitioner's Identifier"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [Person]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [Practitioner]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n* [RelatedPerson]: A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text\r\n"
* rest.resource[=].searchParam[+].name = "_security"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-security"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Security Labels applied to this resource"
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Whether the practitioner record is active"
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A postalCode specified in an address\r\n* [Person]: A postal code specified in an address\r\n* [Practitioner]: A postalCode specified in an address\r\n* [RelatedPerson]: A postal code specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "phone"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-phone"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A value in a phone contact\r\n* [Person]: A value in a phone contact\r\n* [Practitioner]: A value in a phone contact\r\n* [PractitionerRole]: A value in a phone contact\r\n* [RelatedPerson]: A value in a phone contact\r\n"
* rest.resource[=].searchParam[+].name = "address-use"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-use"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A use code specified in an address\r\n* [Person]: A use code specified in an address\r\n* [Practitioner]: A use code specified in an address\r\n* [RelatedPerson]: A use code specified in an address\r\n"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Patient]: A portion of the family name of the patient\r\n* [Practitioner]: A portion of the family name\r\n"
* rest.interaction.code = #transaction
* rest.interaction[+].code = #history-system
* rest.interaction.documentation = "http://example.org/fhir/StructureDefinition/AlimentazioneDossierFarmaceutico"