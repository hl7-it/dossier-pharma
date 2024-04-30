CodeSystem: MotivoSostituzione
Id: motivo-sostituzone
Title: "Motivazione di sostituzione"
Description: "Motivazione di sostituzione"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #1 "Sostituzione etico con generico"
* #2 "Sostituzione generico con altro generico"
* #3 "Generico irreperibile, differenza importo sul Prezzo di Rif. a carico SSN"
//-------------------------------------------------------------------------------------------

//======================================================
CodeSystem: CodiceSostituzoneSostanza
Id: codice-sostituzione-sostanza
Title: "Codice sostituzione sostanza"
Description: "Codice sostituzione sostanza"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #A "Il codice inserito nel campo si riferisce ad un codice AIC, riferito allo stesso farmaco prescritto dal medico, ma che il farmacista ritiene più aggiornato come codice"
* #S "Il codice AIC inserito nel campo rappresenta una sostituzione di farmaco, prevista per legge, rispetto a quanto indicato dal medico prescrittore"
* #V "Il codice prestazione inserito nel campo è stato variato dall’erogatore specialistico rispetto a quanto prescritto dal medico"
//-------------------------------------------------------------------------------------------

//TODO: is it the right CS?
//======================================================
CodeSystem: CsAifaAic
Id: aifa-aic
Title: "AIFA - Autorizzazione Immissione in Commercio"
Description: "AIFA - Autorizzazione Immissione in Commercio."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #031981069 "PANTORC - 28CPR GASTR 20MG"
* #033736075 "AIRCORT NEBUL20FL 2ML 0,5MG/ML"
* #027860042 "ZITROMAX 3CPR RIV 500MG"
//-------------------------------------------------------------------------------------------

//======================================================
CodeSystem: CsAifaNota
Id: aifa-nota
Title: "AIFA - Indicazioni terapeutiche (Nota AIFA)"
Description: "AIFA - Indicazioni terapeutiche per le quali un determinato farmaco è rimborsabile a carico del Servizio Sanitario Nazionale. Conosciute come Note AIFA."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #001
//-------------------------------------------------------------------------------------------