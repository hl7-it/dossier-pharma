CodeSystem: MotivoSostituzione
Id: motivo-sostituzone
Title: "Motivazione di sostituzione"
Description: "HL7 Italia - Indica e se il prodotto è stato sostituito ovvero se il farmaco di riferimento non è reperibile"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.system = "urn:oid:2.16.840.1.113883.3.1937.777.63.11.16"
* #1 "Sostituzione etico con generico"
* #2 "Sostituzione generico con altro generico"
* #3 "Generico irreperibile, differenza importo sul Prezzo di Rif. a carico SSN"
//-------------------------------------------------------------------------------------------

//======================================================
CodeSystem: CodiceSostituzioneSostanza
Id: codice-sostituzione-sostanza
Title: "Codice sostituzione sostanza"
Description: "HL7 Italia - Indica la motivazione di una variazione del farmaco erogato"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.system = "urn:oid:2.16.840.1.113883.2.9.6.1.53"
* #A "Il codice inserito nel campo si riferisce ad un codice AIC, riferito allo stesso farmaco prescritto dal medico, ma che il farmacista ritiene più aggiornato come codice"
* #S "Il codice AIC inserito nel campo rappresenta una sostituzione di farmaco, prevista per legge, rispetto a quanto indicato dal medico prescrittore"
* #V "Il codice prestazione inserito nel campo è stato variato dall’erogatore specialistico rispetto a quanto prescritto dal medico"
//-------------------------------------------------------------------------------------------

//TODO: is it the right CS?
//======================================================
CodeSystem: CsAifaAic
Id: aifa-aic
Title: "AIFA - AIC"
Description: "AIFA - Identifica i farmaci nella loro forma commerciale."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true
* #031981069 "PANTORC - 28CPR GASTR 20MG"
* #033736075 "AIRCORT NEBUL20FL 2ML 0,5MG/ML"
* #027860042 "ZITROMAX 3CPR RIV 500MG"
* #020609083 "ISOPTIN*30 cpr riv 80 mg"
* #039785050 "AUGMENTIN 875 MG/125 MG COMPRESSE RIVESTITE CON FILM"
* #037568019 "5 MICROGRAMMI SOLUZIONE INETTABILE - USO SOTTOCUTANEO PENNA PRERIEMPITA (VETRO)"
//-------------------------------------------------------------------------------------------
//======================================================
CodeSystem: CsMotivazioniNonSost
Id: cs-motivazioni-non-sostituibilita
Title: "Motivazioni di non sostituibilità"
Description: "HL7 Italia - Indica la motivazione di non sostituibilità del farmaco"
* ^experimental = false
* ^caseSensitive = true 

* #1 "Ipersensibilità, intolleranza, interazione o controindicazione ad eccipienti"
* #2 "Obiettive difficoltà di assunzione"
* #3 "Terapia complessa/Problematiche assistenziali"
* #4 "Non art. 15, comma 11-bis"
//======================================================
