in questa pagina viene specificato il contesto odierno di riferimento del Fascicolo Sanitario Elettronico 2.0 al quale i dossier farmaceutico fa riferimento.

### Contesto Normativo
Il fascicolo sanitario  elettronico  (FSE)  e'  l'insieme  dei  dati  e  documenti digitali di  tipo  sanitario  e  sociosanitario  generati  da  eventi clinici presenti e trascorsi riguardanti l'assistito, riferiti  anche alle  prestazioni  erogate  al  di  fuori  del   servizio   sanitario nazionale. 
Il FSE, nel rispetto della normativa  vigente  in  materia  di protezione dei dati personali, e' istituito a fini di: 
- diagnosi, cura e riabilitazione; 
- prevenzione; 
- profilassi internazionale; 
- studio e ricerca scientifica in campo medico,  biomedico  ed epidemiologico; 
- programmazione sanitaria, verifica delle qualita' delle cure e valutazione dell'assistenza sanitaria. 

Per favorire la qualita',  il  monitoraggio,  l'appropriatezza nella dispensazione dei medicinali e l'aderenza alla terapia ai  fini della sicurezza del paziente, e' istituito  il  dossier  farmaceutico quale parte specifica del FSE aggiornato a cura  della  farmacia  che effettua la dispensazion.
[Articolo di riferimento](https://www.gazzettaufficiale.it/atto/regioni/caricaArticolo?art.versione=1&art.idGruppo=14&art.codiceRedazionale=23R00387&art.idArticolo=71&art.idSottoArticolo=1&art.dataPubblicazioneGazzetta=2023-12-23&art.progressivo=0).

Secondo il decreto del 7 settembre 2023 viene definito il dossier farmaceutico come un servizio  reso  disponibile dall'Ecosistema dati sanitari sui dati  estratti  dai  documenti  del Fascicolo sanitario elettronico.
[Riferiemento normativo](https://www.gazzettaufficiale.it/eli/id/2023/10/24/23A05829/sg)

### Infrastruttura
Per poter permettere la visualizzazione e la gestione delle informazioni della terapia farmacologica presenti in diversi documenti, i dati contenuti nel dossier farmaceutico saranno rappresentati secondo lo standard HL7 FHIR v.4.

L’obiettivo principale del dossier farmaceutico è favorire la qualità, il monitoraggio, l’appropriatezza nella dispensazione dei farmaci e l’aderenza alla terapia, al fine di garantire la sicurezza del paziente.Risulta pertanto necessario uniformare la gestione di questa mole di informazioni per renderle facilmente disponibili e consultabili.

Le informazioni utilizzate dal dossier farmaceutico verranno gestite dalle seguenti risorse definite dallo standard FHIR v.4 di HL7:

- MedicatioRequest: per le informazioni inerenti le prescrizioni farmaceutiche;

- MedicationDispense: per le informazioni inerenti le erogazioni farmaceutiche;

- MedicationAdministration: per le informazioni relative le somministrazioni farmaceutiche;

- Coverage: per la gestione delle esenzioni relative alla prescrizione;

- Medication: per le informazioni inerenti al farmaco prescritto ed erogato.

### Implementazione

Le più importatni componenti tecnologiche del FSE 2.0 sono:
- Gateway che ha lo scopo di acquisire i documenti, validarli sintatticamente, semantica e terminologicamente al fine di raccogliere le informazioni in un unico repository;
- Registry Nazionale che ha lo scopo di indicizzare univoca i documenti prodotti trasferiti dal repositry locale al repository nazionale;
- Repository Nazionale che contiene tutti i dati clinici dei pazienti che usufruiscono di servizi socio-sanitari cui vengono inviati i dati dai repository locali tramite gateway;

Il Gateway, una volta validati i documenti, avrà il compito di tradurli nel formato HL7 FHIR (mapping FHIR tramite estrazione dati da formati CDA2) e inviarli all'Ecosistema dei Dati Sanitari(EDS).

HL7 FHIR rappresenta la soluzione migliore per la standardizzazione dei dati, in quanto consente:
- L’interoperabilità tecnica o tecnologica, ossia protocolli standard con cui effettuare lo scambio di informazioni;
- L’interoperabilità sintattica, che fornisce la struttura e il significato delle informazioni;
- L’interoperabilità semantica, che definsisce il significato “semantico” delle informazioni, normalmente attraverso sistemi di codifica;

![Architettura FSE 2.0](contestoAttualeFSE.jpg "Architettura FSE 2.0")