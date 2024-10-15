Logical: PianoTerapeutico
Title: "Piano Terapeutico"
Description: "Informazioni relative al piano terapeutico"
Characteristics: #can-be-target

* identificativo 1..1 Identifier "Identificativo del piano terapeutico"
* dataDiCreazione 1..1 dateTime "Data di creazione del piano terapeutico"
* paziente 1..1 string "Paziente titolare del piano terapeutico"

* medicoPrescrittore 1..1 Reference (Medico)  "Medico prescrittore del piano terapeutico"

* medicoCurante 0..1 Reference(Medico) "Medico curante del paziente"

* quesitoDiagnostico 0..1 string "Informazioni codificate o testuali riguardanti il quesito diagnostico"
 
* notaAIFA 0..* code "Definisce le indicazioni terapeutiche per le quali un determinato farmaco è rimborsabile a carico del SSN"
* farmaco 1..* Reference(Farmaco) "Farmaci da prescrivere per il piano terapeutico"
* posologia 1..* string "Posologia dei farmaci"
