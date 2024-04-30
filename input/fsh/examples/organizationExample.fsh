// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: asl-020101
InstanceOf: Organization
Description: "Organization: esempio Azienda Sanitaria"
// 2020	
//-------------------------------------------------------------------------------------------
* identifier[0].system = "http://hl7.it/sid/fls" 
* identifier[0].value = "020101"
* identifier[1].system = "http://hl7.it/sid/vda/asl" 
* identifier[1].value = "101"
* identifier[2].system = "http://hl7.it/sid/partitaIva" 
* identifier[2].value = "00177330073"
* identifier[3].system = "http://hl7.it/sid/codiceFiscale" 
* identifier[3].value = "91001750073"
* active = 	true
* type = http://terminology.hl7.it/CodeSystem/it-tipoEntita#asl "Azienda Sanitaria Locale"
* name = "AZIENDA U.S.L. VALLE D'AOSTA"

* telecom[0].system = #phone
* telecom[0].value = "(0165) 5431"
* telecom[1].system = #fax
* telecom[1].value = "(0165) 544587"
* telecom[2].system = #email
* telecom[2].value = "protocollo@pec.ausl.vda.it"
* telecom[3].system = #url
* telecom[3].value = "http://www.ausl.vda.it"

// TODO: find a solution for the reference in it-base
// * address[0].line = "VIA GUIDO REY 1"
// * address[0].city = "AOSTA"
// * address[0].city.extension[0].url = ISO_SC_coding
// * address[0].city.extension[0].valueCoding = CS_unitaTerritoriali#007003 "AOSTA"    
// * address[0].district = "AO"
// * address[0].state = "VALLE D'AOSTA"
// * address[0].state.extension[0].url = ISO_SC_coding
// * address[0].state.extension[0].valueCoding = CsMinsanRegioni#020 "VALLE D'AOSTA"
// * address[0].postalCode = "11100"
// * address[0].country = "IT"


// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++