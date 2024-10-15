Logical: ErogazioneFarmaceutica
Title: "Erogazione Farmaceutica"
Description: "Informazioni relative all'erogazione del farmaco"
Characteristics: #can-be-target

* identificativo 0..1 Identifier "Identificativo della erogazione"
* status 1..1 code "Stato dell'erogazione"
* paziente 1..1 string "Soggetto che ha ricevuto il farmaco"
* erogatore 1..1 string "Persona che eroga il farmaco"
* prescrizione 0..1 Reference(PrescrizioneFarmaceutica) "Prescrizione farmaceutica"
* farmaco 1..1 Reference(Farmaco) "Farmaco"
* quantitaErogata 1..1 Quantity "Numero di confezioni erogate"
* dataErogazione 1..1 dateTime "Data e ora dell'erogazione"
* sostituzioneFarmaco 0..1 string "Motivo della sostituzione del farmaco"
* delegato 0..1 string "Persona delegata a ritirare il farmaco" 
* regimeDiErogazione 0..1 code "Informazioni associate al regime di erogazione"  
