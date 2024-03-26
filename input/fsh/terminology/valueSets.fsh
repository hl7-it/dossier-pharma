
//======================================================
ValueSet: VsGroupIdentifierUri
Id: groupIdentifierUri-it-dossierPharma
Title: "Sistemi di identificazione per prescrizioni"
Description: "Sistemi di identificazione per prescrizioni"
//-------------------------------------------------------------------------------------------

* $uri#http://hl7.it/sid/mef/nre "Numero Ricetta Elettronica"


//======================================================
ValueSet: VsRuoloPrerscrittore
Id: ruoloPrescrittore-it-dossierPharma
Title: "Ruolo Prescrittore"
Description: "Ruolo del prescrittore Basato su 'Estensione del Vocabolario HL7 V3 RoleCode'"
//-------------------------------------------------------------------------------------------

* codes from system $it-v3RoleCode


//======================================================
ValueSet: VsSubstitutionDossierPharma
Id: substitution--it-dossierPharma
Title: "Regole di sostituzione"
Description: "Regole di sostituzione permesse per le prescrizioni inviate al dossier farmaceutico"
//-------------------------------------------------------------------------------------------

* $v3-substanceAdminSubstitution#N "Nessuna sostituzione"
* $v3-substanceAdminSubstitution#EC "Composizione equivalente"


//======================================================
//TODO: put this CodeSystem in another file
CodeSystem: CsMotivazioniNonSost
Id: cs-motivazioni-non-sostituibilita
Title: "Motivazioni di non sostituibilità"
Description: "Motivazioni di non sostituibilità"
* ^experimental = false
* ^caseSensitive = true 

* #1 "Ipersensibilità, intolleranza, interazione o controindicazione ad eccipienti"
* #2 "Obiettive difficoltà di assunzione"
* #3 "Terapia complessa/Problematiche assistenziali"
* #4 "Non art. 15, comma 11-bis"
//======================================================


//======================================================
ValueSet: VsMotivazioniNonSost
Id: vs-motivazioni-non-sostituibilita
Title: "Motivazioni di non sostituibilità"
Description: "Motivazioni di non sostituibilità"
* codes from system CsMotivazioniNonSost
//-------------------------------------------------------------------------------------------


// ValueSet: VsMinisteroSaluteEsenzioni
// Id: vs-minsan-esenzioni
// Title: "Ministero della Salute - Esenzioni"
// Description: "Codici Esenzioni Ministero della Salute"
// * ^experimental = false
// * ^status = #active
// * include codes from  system $minsan-esenzioni

//======================================================
ValueSet: VsMotivoSostituzione
Id: vs-motivo-sostituzone
Title: "Motivazione di sostituzione"
Description: "Motivazione di sostituzione"
* ^experimental = false
* ^status = #active
* include codes from  system motivo-sostituzone
//-------------------------------------------------------------------------------------------

//======================================================
ValueSet: VsCodiceSostituzoneSostanza
Id: vs-codice-sostituzione-sostanza
Title: "Codice sostituzione sostanza"
Description: "Codice sostituzione sostanza"
* ^experimental = false
* ^status = #active
* include codes from  system codice-sostituzione-sostanza