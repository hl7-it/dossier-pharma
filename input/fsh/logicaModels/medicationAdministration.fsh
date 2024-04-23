// Check the latest version in MEOW IG
Logical: SomministrazioneFarmaco
Title: "Somministrazione del farmaco"
Description: "Informazioni relative alla somministrazione del farmaco."
Characteristics: #can-be-target
* paziente 1..1 string "Soggetto che riceve l'infusione o la somministrazione del farmaco." 
* farmaco 1..1 string "Farmaco infuso o somministrato al paziente." 
* periodoSomministrazione 0..1 string "Periodo della infusione/somministrazione" 
  * inizio 0..1 Period "Inizio della infusione/somministrazione del farmaco."
  * fine 0..1 Period "Fine della infusione/somministrazione del farmaco."
* circostanzaAssunzione 0..1 string "Circocostanza di assunzione del farmaco (es: dopo i pasti, prima dei pasti ...)"
* posologia 0..1 string "Dosaggio e modalità di assunzione"