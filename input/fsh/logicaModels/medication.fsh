Logical: Farmaco
Title: "Farmaco"
Description: "Informazioni relative al farmaco"
Characteristics: #can-be-target
* ^status = #active
* identificativo 0..* Identifier "Identificatico del prodotto farmaceutico" 
* identificativoConfezione 0..* Identifier "Identificativo del lotto di produzione"
* classificazioneFarmaco 0..* code "Classificazione del farmaco (es. ATC, AIFA AIC, eccezioni, etc.)"
* formaFarmaceutica 0..1 string "Formato del farmaco (es. pillola, crema, …)"