
//======================================================
ValueSet: VsGroupIdentifierUri
Id: groupIdentifierUri-it-dossierPharma
Title: "Sistemi di identificazione per la prescrizione"
Description: "Sistemi di identificazione per la prescrizione"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $uri#urn:oid:2.16.840.1.113883.2.9.4.3.9 "Numero Ricetta Elettronica (identificativo ordine)"

//======================================================
ValueSet: VsOidPT
Id: oidpt-it-dossierPharma
Title: "Sistemi di identificazione per il piano terapeutico"
Description: "Sistemi di identificazione per il piano terapeutico"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $uri#urn:oid:2.16.840.1.113883.2.9.4.3.13 "Identificativo Piano Terapeutico"


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
ValueSet: VsMotivazioniNonSost
Id: vs-motivazioni-non-sostituibilita
Title: "Motivazioni di non sostituibilità"
Description: "Motivazioni di non sostituibilità"
* ^experimental = false
* codes from system CsMotivazioniNonSost
//-------------------------------------------------------------------------------------------

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
ValueSet: VsCodiceSostituzioneSostanza
Id: vs-codice-sostituzione-sostanza
Title: "Codice sostituzione sostanza"
Description: "Codice sostituzione sostanza"
* ^experimental = false
* ^status = #active
* include codes from  system codice-sostituzione-sostanza

//TODO: this VS needs to be in terminology
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAifaAIC
Id: aifa-aic
Title: "AIFA AIC"
Description: "AIFA AIC - Valueset relativo ai codici AIC"
* ^experimental = false

* codes from system https://www.hl7.it/fhir/terminology/CodeSystem/aifa-aic
* codes from system $aic 

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

ValueSet: VsNullflavor
Id: vs-NullFlavor
Title: "NullFlavor"
Description: "Codici che descrivono perchè non è presente un valore valido"
* ^experimental = false
* codes from system $v3-NullFlavor
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
