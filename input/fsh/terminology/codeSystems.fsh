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