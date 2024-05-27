

//============== ALIAS ===============
Alias: $uri = urn:ietf:rfc:3986
// Alias: $uriCodiceSostituzone = https://develop.art-decor.org/fhir/ValueSet/2.16.840.1.113883.2.9.6.1.53
// Alias: $uriMotivoSostituzione = https://hl7itig.art-decor.pub/fhir/ValueSet/2.16.840.1.113883.3.1937.777.63.11.16
Alias: $oid = urn:ietf:rfc:1155

Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $sct = http://snomed.info/sct

Alias: CS_unitaTerritoriali = https://www.hl7.it/fhir/terminology/sid/istat-unitaAmministrativeTerritoriali
Alias: CS_Estero = https://www.hl7.it/fhir/terminology/sid/istat-unitaAmministrativeTerritorialiEstere

Alias: CS_ProfessioniIstat = https://www.hl7.it/fhir/terminology/CodeSystem/istat-professioni
Alias: CS_TitoloStudioIstat = https://www.hl7.it/fhir/terminology/CodeSystem/istat-ctsi03

Alias: V3ActStatus = http://terminology.hl7.org/CodeSystem/v3-ActStatus
Alias: CS_tipoEntita = https://www.hl7.it/fhir/terminology/CodeSystem/it-tipoEntita


Alias: $minsan-fls = https://www.hl7.it/fhir/terminology/sid/minsan-fls
Alias: $minsan-hsp = https://www.hl7.it/fhir/terminology/sid/minsan-hsp
Alias: $minsan-ria = https://www.hl7.it/fhir/terminology/sid/minsan-ria // https://www.salute.gov.it/portale/documentazione/p6_2_2_1.jsp?lingua=italiano&id=1053

Alias: $minsan-farmacie = https://www.hl7.it/fhir/terminology/sid/minsan-farmacie
Alias: $minsan-minsan-parafarmacie = https://www.hl7.it/fhir/terminology/sid/minsan-parafarmacie

Alias: $minsan-regione = https://www.hl7.it/fhir/terminology/sid/minsan-regione
//Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
//Alias: $it-v3RoleCode = https://www.hl7.it/fhir/terminology/CodeSystem/it-v3RoleCode
Alias: $coverage-exceptionStatus = http://hl7.it/fhir/StructureDefinition/coverage-exceptionStatus
Alias: $dataAbsentReason = http://hl7.org/fhir/StructureDefinition/data-absent-reason

Alias: $minsan-esenzioni = http://hl7.it/fhir/dossierPharma/CodeSystem/minsan-esenzioni // TODO: bring it to teminology!!
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $istat-unitaAmministrativeTerritoriali = https://www.hl7.it/fhir/terminology/sid/istat-unitaAmministrativeTerritoriali

Alias: $Coverage-it-base = http://hl7.it/fhir/StructureDefinition/Coverage-it-base
Alias: $Patient-it-base = http://hl7.it/fhir/StructureDefinition/Patient-it-base

Alias: $NRE =  http://hl7.it/sid/mef/nre
Alias: $CF = http://hl7.it/sid/codiceFiscale

//Alias: $aic = https://www.hl7.it/fhir/terminology/CodeSystem/aifa-aic TODO: complete the code system in terminology
Alias: $aic = http://hl7.it/fhir/dossierPharma/CodeSystem/aifa-aic
Alias: $gruppo-equivalenza = https://www.hl7.it/fhir/terminology/CodeSystem/aifa-ge
Alias: $atc = http://www.whocc.no/atc
Alias: $v3-substanceAdminSubstitution = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution


Alias: COV_TYP = http://terminology.hl7.org/CodeSystem/v3-ActCode
//Alias: $vs-aic = https://www.hl7.it/fhir/terminology/ValueSet/aifa-aic 
Alias: $vs-aic = http://hl7.it/fhir/dossierPharma/ValueSet/aifa-aic 
Alias: $vs-gruppo-equivalenza = http://hl7.it/fhir/dossierPharma/ValueSet/aifa-ge
//Alias: $vs-gruppo-equivalenza = https://www.hl7.it/fhir/terminology/ValueSet/aifa-ge //TODO: this VS doesn't exist in terminology
// for fixing the error i define it in this guide
Alias: $vs-atc = https://www.hl7.it/fhir/terminology/ValueSet/who-atc
Alias: $vs-icd9cm = https://www.hl7.it/fhir/terminology/ValueSet/who-icd9cm
//Alias: $vs-aifa-nota = https://www.hl7.it/fhir/terminology/ValueSet/aifa-nota TODO: insert into terminology, there is in in dossier-pharma
Alias: $vs-aifa-nota = http://hl7.it/fhir/dossierPharma/ValueSet/vs-aifa-nota


Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $non-sostituibilità = urn:oid:2.16.840.1.113883.2.9.6.1.52
//Alias: $aifa-nota = https://www.hl7.it/fhir/terminology/CodeSystem/aifa-nota TODO:
Alias: $aifa-nota = http://hl7.it/fhir/dossierPharma/CodeSystem/aifa-nota
Alias: $DIZ_Sostituzione = urn:oid:2.16.840.1.113883.2.9.6.1.53
Alias: $specializ-medico = urn:oid:2.16.840.1.113883.2.9.5.1.111
Alias: $no-esenzione = urn:oid:2.16.840.1.113883.2.9.5.2.2
Alias: $esenzion-naz = urn:oid:2.16.840.1.113883.2.9.6.1.22
Alias: $esenzion-reg = urn:oid:2.16.840.1.113883.2.9.2.[REGIONE].6.22

Alias: $Organization-it-base = http://hl7.it/fhir/StructureDefinition/Organization-it-base


//  Example

Alias: $v3-ActReason = http://hl7.it/fhir/dossierPharma/CodeSystem/motivo-sostituzone
Alias: $reason-medication-given = http://terminology.hl7.org/CodeSystem/reason-medication-given
Alias: $sct = http://snomed.info/sct
Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Alias: $istat-comuni = https://www.hl7.it/fhir/terminology/CodeSystem/istat-comuni
Alias: $dug = http://registry.geodati.gov.it/dug
