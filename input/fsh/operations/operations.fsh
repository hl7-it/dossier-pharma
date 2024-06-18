Instance: getDataByOrder
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.it/fhir/dossier-pharma/OperationDefinition/getDataByOrder"
* name = "GetDataByOrder"
* title = "Dati per ordine"
* status = #draft
* kind = #operation
* date = "2022-01-31"
* publisher = "HL7 Italia"
// * contact.name = "System Administrator"
// * contact.telecom.system = #email
// * contact.telecom.value = "beep@coyote.acme.com"
* description = "Questa operazione permette di recuperare le risorse associate ad uno specifico ordine"
// * useContext.code = $codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = $v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #getDataByOrder
* comment = "Questa operazione permette di recuperare le risorse associate ad uno specifico ordine"
* system = true
* type = false
* instance = false
// * inputProfile = 	"http://hl7.eu/fhir/ig/gk/StructureDefinition/Observation-bp-gk"
// * outputProfile = "Bundle"
* parameter[0].name = #orderId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The order identifier used for filtering the datra retrieval"
* parameter[=].type = #Identifier

* parameter[+].name = #profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #uri
* parameter[=].documentation = "The StructureDefinition the returned resources shall conform to. If missing, the server choose which resource are returned."

* parameter[+].name = #graph
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #uri
* parameter[=].documentation = "The GraphDefinition defining a graph of resources to be returned"

* parameter[+].name = #data
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Resources returned"
* parameter[=].type = #Bundle