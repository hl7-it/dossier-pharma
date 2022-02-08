
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