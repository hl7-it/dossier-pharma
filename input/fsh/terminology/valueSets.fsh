
//======================================================
ValueSet: VsGroupIdentifierUri
Id: groupIdentifierUri-it-dossierPharma
Title: "Sistemi di identificazione per prescrizioni"
Description: "Sistemi di identificazione per prescrizioni"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $uri#urn:oid:2.16.840.1.113883.2.9.4.3.9 "Numero Ricetta Elettronica (identificativo ordine)"


//======================================================
ValueSet: VsRuoloPrescrittore
Id: ruoloPrescrittore-it-dossierPharma
Title: "Ruolo Prescrittore"
Description: "Ruolo del prescrittore Basato su 'Estensione del Vocabolario HL7 V3 RoleCode'"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system CsItRoleCode


//======================================================
ValueSet: VsSubstitutionDossierPharma
Id: substitution-it-dossierPharma
Title: "Regole di sostituzione"
Description: "Regole di sostituzione permesse per le prescrizioni inviate al dossier farmaceutico"
//-------------------------------------------------------------------------------------------
* ^experimental = false
// * $v3-substanceAdminSubstitution#N "Nessuna sostituzione"
// * $v3-substanceAdminSubstitution#EC "equivalent composition"
* codes from system $v3-substanceAdminSubstitution


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
* ^experimental = false
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

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsGruppoEquivalenza
Id: aifa-ge
Title: "AIFA Gruppo di Equivalenza"
Description: "AIFA Gruppo di Equivalenza"
* ^experimental = false
* codes from system $gruppo-equivalenza
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//TODO: this VS needs to be in terminology
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAifaAIC
Id: aifa-aic
Title: "AIFA AIC"
Description: "AIFA AIC"
* ^experimental = false
* codes from system $aic
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//TODO: this VS needs to be in terminology
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNotaAifa
Id: vs-aifa-nota
Title: "AIFA Note"
Description: "Indicazioni terapeutiche per un determinato farmaco rimborsabile dal Servizio Sanitario Nazionale"
* ^experimental = false
* codes from system $aifa-nota
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++