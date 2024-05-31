In questa pagina viene specificato il contesto di riferimento del Fascicolo Sanitario Elettronico 2.0.
### Contesto Attuale

Il dossier farmaceutico, come definito da decreto del 7 settembre 2023, è un servizio  reso  disponibile dall'Ecosistema dati sanitari sui dati estratti  dai  documenti  del Fascicolo sanitario elettronico.

In particolare, il decreto del 29 settembre 2015 n. 178 (già considerato per il Contesto Iniziale del dossier farmaceutico) lo definisce come una parte specifica del FSE istituita per favorire la qualita', il monitoraggio, l'appropriatezza nella dispensazione dei medicinali e l'aderenza alla terapia ai fini della sicurezza del paziente, aggiornato a cura della farmacia che effettua la dispensazione.

### Infrastruttura
Per poter permettere la visualizzazione e la gestione delle informazioni della terapia farmacologica presenti in diversi documenti, i dati contenuti nel dossier farmaceutico saranno rappresentati secondo lo standard HL7 FHIR v.4.

L’obiettivo principale del dossier farmaceutico è favorire la qualità, il monitoraggio, l’appropriatezza nella dispensazione dei farmaci e l’aderenza alla terapia, al fine di garantire la sicurezza del paziente.Risulta pertanto necessario uniformare la gestione di questa mole di informazioni per renderle facilmente disponibili e consultabili.

Le attuali informazioni utilizzate dal dossier farmaceutico verranno gestite dalle seguenti risorse definite dallo standard FHIR v.4 di HL7:

- MedicatioRequest: per le informazioni inerenti le prescrizioni farmaceutiche;

- MedicationDispense: per le informazioni inerenti le erogazioni farmaceutiche;

- MedicationAdministration: per le informazioni relative le somministrazioni farmaceutiche;

- Coverage: per la gestione delle esenzioni relative alla prescrizione;

- Medication: per le informazioni inerenti al farmaco prescritto ed erogato.

### Implementazione

Le più importanti componenti tecnologiche del FSE 2.0 sono:
- Soluzione tecnologica che ha lo scopo di estrarre, validare (sintatticamente, semanticamente e terminologicamente) e trasformare i documenti nel rispetto del principio di interoperabilità alimentado il FSE;
- Infrastruttura Nazionale per l’Interoperabilità (INI) che interopera con il FSE al fine di collezionare, richiedere e trasmettere dati e documenti sanitari attraverso modalità sicure e nel rispetto dei consensi stabiliti dagli assistiti;
- Registry FSE dove verranno indicizzati i metadati dei documenti del FSE per le Regioni e Province Autonome;
- Ecosistema dei dati santari (EDS) che contiene i dati clinici dei pazienti.

![](contestoAttuale.jpg)