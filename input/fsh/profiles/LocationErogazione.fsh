Profile: LocationErogazione
Parent: Location
Id: LocationErogazione
* ^status = #draft
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains
    CodiceStrutturaErogatore 0..1 and
    ASLErogatore 0..1
* identifier[CodiceStrutturaErogatore].system 1..
* identifier[CodiceStrutturaErogatore].system ^short = "urn:oid:2.16.840.1.113883.2.9.2.codISTATazienda/presidio/codFarm"
* identifier[CodiceStrutturaErogatore].value 1..
* identifier[CodiceStrutturaErogatore].value ^short = "Codice Struttura dell'erogatore"
* identifier[ASLErogatore].system 1..
* identifier[ASLErogatore].system = $FLS11 (exactly)
* identifier[ASLErogatore].value 1..
* identifier[ASLErogatore].value ^short = "Codice FLS11 dell'erogatore"
