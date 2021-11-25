Coerentemente con quanto stabilito nel DPCM n.178/2015, il “dossier
farmaceutico” rappresenta la parte specifica del FSE (Fascicolo
Sanitario Elettronico) istituita per favorire la qualità, il
monitoraggio, l’appropriatezza nella dispensazione dei medicinali e
l’aderenza alla terapia ai fini della sicurezza del paziente,
aggiornato a cura della farmacia che effettua la dispensazione.

Il gruppo di lavoro n.3, istituito dal Tavolo Tecnico di monitoraggio e
indirizzo per l'attuazione del FSE (art. 26 DPCM n.178/2015) ha
descritto nel deliverable prodotto il dossier farmaceutico, i suoi
contenuti, gli attori e le modalità con le quali possa essere
alimentato.

Gli enti componenti del GdL n.3 sono:

  - Regione Veneto (coordinatrice)

  - Agenzia per l’Italia Digitale

  - Ministero della Salute

  - Ministero dell’Economia e delle Finanze

  - Regione Lazio

  - Regione Liguria

  - Regione Lombardia

  - Regione Marche

  - Regione Piemonte

  - Regione Puglia

  - Regione Toscana

  - Regione Emilia-Romagna

  - Federazione Ordini Farmacisti Italiani

  - Federazione Nazionale degli Ordini dei Medici Chirurghi e degli
    Odontoiatri

Il dossier farmaceutico, essendo parte integrante del FSE, eredita le
policy di retention dei dati e di sicurezza definite per il FSE stesso.
Inoltre, in conformità alle specifiche tecniche nazionali di
interoperabilità del FSE, tutte le transazioni avverranno mediante
l’infrastruttura INI.

Per poter permettere la visualizzazione e la gestione delle informazioni
della terapia farmacologica presenti in diversi documenti, i dati
contenuti nel dossier farmaceutico saranno rappresentati secondo lo
standard HL7 FHIR v.4.

Il dossier farmaceutico, come definito dal GDL n.3 istituito dal Tavolo
tecnico e di monitoraggio del FSE, verrà implementato in 3 fasi, in base
alla disponibilità delle informazioni all’interno del FSE.

Le fasi prevedono di includere le seguenti informazioni:

● Fase 1: informazioni relative alle prescrizioni ed erogazioni delle
ricette gestite in modalità dematerializzata secondo il DM 2 novembre
2011 ed opzionalmente anche informazioni relative alle prescrizioni
elettroniche secondo il DPCM del 26 marzo 2008.

● Fase 2: ampliamento del processo di dematerializzazione delle
prescrizioni ed erogazioni

oggi non gestite in tale modalità. Informazioni dei piani terapeutici e
informazioni recuperabili da altre tipologie documentali come lettere di
dimissione, verbali di pronto soccorso e taccuino del paziente.

● Fase 3: si prevede di rendere disponibili al dossier farmaceutico
anche informazioni relative a prescrizioni, somministrazioni, erogazioni
in determinati episodi di cura oggi non informatizzate e informazioni
relative a terapie convenzionali e non acquistate direttamente dal
cittadino. Inoltre si prevede di gestire informazioni anche relative
alle terapie avverse.

Risulta pertanto necessario uniformare la gestione di questa mole di
informazioni per renderle facilmente disponibili e consultabili.
L'obiettivo del dossier farmaceutico è quello di dare una visione il più
possibile completa della terapia farmacologica di un paziente, in base
alle fasi di implementazione dello stesso, mediante la sua funzionalità
principale denominata “Medication List”. Per queste ragioni, le
informazioni del dossier farmaceutico verranno gestite mediante lo
standard FHIR v.4 di HL7 in server FHIR gestiti dalle RDA (Regioni di
Assistenza) per i propri assistiti. I server FHIR dovranno essere in
grado di gestire il versioning delle risorse in caso di aggiornamento
delle stesse.

Le informazioni utilizzate dal dossier farmaceutico verranno gestite
dalle seguenti risorse definite dallo standard FHIR v.4 di HL7:

● MedicatioRequest: per le informazioni inerenti le prescrizioni
farmaceutiche;

● MedicationDispense: per le informazioni inerenti le erogazioni
farmaceutiche;

● MedicationAdministration: per le informazioni relative le
somministrazioni farmaceutiche;

● CarePlan: per i piani terapautici;

● AdverseEvent: per le informazioni relative le reazioni avverse.

Nello specifico, in base alle fasi di implementazione del dossier
farmaceutico, saranno disponibili le seguenti risorse:

● Fase 1: saranno disponibili risorse di tipo MedicationRequest e
MedicationDispense;

● Fase 2: saranno disponibili risorse di tipo MedicationRequest e
MedicationDispense già previste nella fase 1 con in aggiunta di risorse
di tipo MedicationAdministration e CarePlan;

● Fase 3: oltre alle risorse disponibili nelle fasi precedenti, saranno
disponibili anche le risorse AdverseEvent.

Nella figura sottostante viene rappresentata l’infrastruttura per la
gestione dei documenti nel FSE e delle informazioni necessarie al
dossier farmaceutico.

I documenti clinici (ad esempio prescrizioni, erogazioni, lettere di
dimissione ospedaliera, etc.) vengono indicizzati nel FSE mediante INI
(Infrastruttura Nazionale per l’Interoperabilità del FSE) nella RDA del
paziente. Le informazioni farmaceutiche presenti in questi documenti
verranno raccolte in risorse FHIR per i fini del dossier farmaceutico e
archiviate in un server FHIR gestito dalla RDA del paziente mediante
INI.

Per quanto riguarda il token di sicurezza, occorre fare riferimento a
quanto previsto nelle specifiche tecniche per l’interoperabilità del FSE
in riferimento all’infrastruttura di sicurezza.

Per quanto concerne la gestione dell’oscuramento delle informazioni del
dossier farmaceutico, la soluzione individuata dal gruppo di lavoro n.3
può essere sintetizzata come segue:

  - Le risorse FHIR ereditano il livello di confidenzialità dei singoli
    documenti da cui originano e che vengono indicizzati nel FSE.

  - Un cambio del livello di confidenzialità del singolo documento nel
    FSE aggiorna anche le risorse FHIR tramite l’utilizzo della risorsa
    Provenance.

L’alimentazione dei dati pregressi dovrà tener conto delle capacità
delle Regioni e di INI di creare e alimentare il FHIR server. Il
documento da cui viene generata la risorsa FHIR (HL7 CDA2 di
prescrizione/HL7 CDA2 di erogazione) dovrà essere presente nel FSE. Ad
oggi, nel FSE sono presenti documenti di prescrizione ed erogazione a
partire dalla data del 01/09/2017. Alla luce del fatto che sono in corso
analisi a livello nazionale, a seguito del Decreto Rilancio, sul tema
della visibilità e disponibilità dei dati pregressi, il dossier
erediterà le logiche e vincoli che verranno definiti nel prossimo DPCM.

![](contesto-1.png)
