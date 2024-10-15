Instance: Location-Dossier-Esempio
InstanceOf: Location-it-dossierPharma
Title : "Location struttura ospedaliera Milanese"
Usage: #example
Description: "Esempio di location struttura ospedaliera di Milano"

* id = "f148e54a-2046-4534-b9e9-54e7e9632224"
* identifier[strutturaHos].use = #usual
* identifier[strutturaHos].system = $minsan-hsp
* identifier[strutturaHos].value = "123456"
* status = #active
* name = "Policlinico di Milano"
* alias[0] = "Poliambulatorio di Milano"
* alias[1] = "Ospedale universitario di Milano"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #HOSP
* type.coding.display = "Hospital"
* telecom[0].system = #phone
* telecom[0].value = "33324567"
* address[+].city = #36023
* address[=].type = #physical
* address[=].postalCode = "20019"
* address[=].city = "Milano"