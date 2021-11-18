### Infrastruttura

Il dossier farmaceutico come definito nel documento di deliverable del GDL n.3 istituito dal Tavolo tecnico e di monitoraggio del FSE verrà implementato in 3 fasi in base alla disponibilità delle informazioni all’interno del FSE. Le fasi prevedono di includere le seguenti informazioni:

   - Fase 1: informazioni relative alle prescrizioni ed erogazioni delle ricette gestite in modalità dematerializzata secondo il DM 2 novembre 2011 ed opzionalmente anche informazioni relative alle prescrizioni elettroniche secondo il DPCM del 26 marzo 2008.
   
   - Fase 2: ampliamento del processo di dematerializzazione delle prescrizioni ed erogazioni oggi non gestite in tale modalità. Informazioni dei piani terapeutici e informazioni recuperabili da altre tipologie documentali come lettere di dimissione, verbali di pronto soccorso e il taccuino del paziente.
   
   - Fase 3: si prevede di rendere disponibili al dossier farmaceutico anche informazioni relative a prescrizioni, somministrazioni, erogazioni in determinati episodi di cura oggi non informatizzate. Informazioni relative a terapie convenzionali e non acquistate direttamente dal cittadino. Inoltre si prevede di gestire informazioni anche relative alle terapie avverse.
    
Risulta pertanto necessario uniformare la gestione di questa mole di informazioni per renderle facilmente disponibili e consultabili. L'obiettivo del dossier farmaceutico è quello di dare una visione il più possibile completa della terapia farmacologica di un paziente, in base alle fasi di implementazione dello stesso, mediante la sua funzionalità principale denominata “Medication List”. Per queste ragioni le informazioni del dossier farmaceutico verranno gestite mediante lo standard FHIR v.4 di HL7 in server FHIR gestiti dalle RDA per i propri assistiti. I server FHIR dovranno essere in grado di gestire il versioning delle risorse in caso di aggiornamento delle stesse.

Le informazioni utilizzate dal dossier farmaceutico verranno gestite dalle seguenti risorse definite dallo standard FHIR v.4 di HL7:

   - **MedicationRequest**: per le informazioni inerenti alle prescrizioni farmaceutiche;
  
   - **MedicationDispense**: per le informazioni inerenti alle erogazioni farmaceutiche;
  
   - **MedicationAdministration**: per le informazioni relative alle somministrazioni farmaceutiche;
  
   - **CarePlan**: per i piani terapautici; 
   
   - **AdverseEvent**: per le informazioni relative alle reazioni avverse.
   
Nello specifico in base alle fasi di implementazione del dossier farmaceutico saranno disponibili le seguenti risorse:
   
   - Fase 1: saranno disponibili risorse di tipo MedicationRequest e  MedicationDispense;
   
   - Fase 2: saranno disponibili risorse di tipo MedicationRequest e MedicationDispense già previste nella fase 1 con in aggiunta risorse di tipo MedicationAdministration e CarePlan;
   
   - Fase 3: oltre alle risorse disponibili nelle fasi precedenti saranno disponibili anche le risorse AdverseEvent.
   
   
### Implementazione

Nella figura sottostante viene rappresentata l’infrastruttura per la gestione dei documenti nel FSE e delle informazioni necessarie al dossier farmaceutico.
I documenti clinici (ad esempio prescrizioni, erogazioni, lettere di dimissione ospedaliera, ecc..) vengono indicizzati nel FSE mediante INI nella RDA del paziente. Le informazioni farmaceutiche presenti in questi documenti verranno raccolta in risorse FHIR per i fini del dossier farmaceutico e archiviate in un server FHIR gestito dalla RDA del paziente mediante INI.
Il dossier farmaceutico essendo parte del FSE eredita le policy di sicurezza e retention dei dati definite per il FSE. Inoltre tutte le transazioni verranno gestite mediante l’infrastruttura INI come definito per il FSE. Per quanto riguarda il token di sicurezza fare riferimento a quanto previsto nelle specifiche INI in riferimento all’infrastruttura di sicurezza.

L’alimentazione dei dati pregressi dovrà tener conto delle capacità delle Regioni/Sistema TS di creare e alimentare il FHIR server. Il documento da cui viene generata la risorsa FHIR (CDA2 di prescrizione/CDA2 di erogazione) dovrà essere presente nel FSE. Ad oggi nel FSE sono presenti documenti di prescrizione ed erogazione a partire dalla data del 01/09/2017. Visto che, sono in corso analisi a livello nazionale, a seguito del Decreto Rilancio, sul tema della visibilità e disponibilità dei dati pregressi, il dossier erediterà le logiche e vincoli che verranno definiti nel prossimo DPCM.
<img src="infrastruttura.png" style="width:100%; text-align:center"/>

