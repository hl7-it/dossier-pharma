### Alimentazione del Dossier Farmaceutico

{% include sequence-1.svg %}

L’attore *Sender* alimenta il Dossier Farmaceutico trasmettendo
all’attore *Receiver*, attraverso il metodo POST, un insieme di
informazioni rappresentate in risorse FHIR. Le risorse FHIR profilate
nella presente guida che è possibile trasmettere sono [MedicationRequest
- Dossier
Farmaceutico](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-MedicationRequest-it-dossierPharma.html),
[MedicationDispense - Dossier
Farmaceutico](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-MedicationDispense-it-dossierPharma.html)
e
[ProvenanceForDossier](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-ProvenanceForDossier.html).
In particolare, le risorse di tipo *MedicationRequest - Dossier
Farmaceutico* (per rappresentare informazioni inerenti alle
prescrizioni) e le risorse d tipo *MedicationDispense - Dossier
Farmaceutico* (per rappresentare informazioni inerenti agli erogati)
devono essere sempre legate ad una risorsa *ProvenanceForDossier*.

L’alimentazione può essere effettuata secondo due approcci alternativi:
1. Invio di più risorse FHIR nella stessa interazione o 2. Invio di una
singola risorsa FHIR.

1.  *Invio di più risorse FHIR nella stessa interazione*

In questo scenario, il *Sender* crea una risorsa *Bundle* atta a
collezionare tutte le risorse che intende trasmettere. Tali risorse
devono essere valorizzate nell’elemento *Bundle.entry.resource*, come
illustrato [qui](https://www.hl7.org/fhir/bundle.html). Successivamente,
il *Sender* pone la risorsa *Bundle* nel corpo del messaggio di
richiesta.

Il *Sender* può trasmettere la risorsa *Bundle* specificando due
possibili tipologie di interazione previste dallo standard FHIR:

  - *Transaction*: permette di assicurare che tutte le azioni richieste
    vengano eseguite in forma transazionale, ossia che vengano
    processate correttamente tutte o, in caso di fallimento parziale,
    nessuna. In questo contesto, la transazione avrà successo se tutte
    le risorse contenute nel *Bundle* saranno processate correttamente,
    altrimenti nessuna di esse alimenterà il Dossier Farmaceutico.

  - *Batch*: permette di eseguire le azioni richieste in maniera
    indipendente. È quindi possibile che una risorsa contenuta nel
    *Bundle* processata correttamente alimenti il Dossier Farmaceutico e
    un’altra risorsa contenuta nel *Bundle* non venga aggiunta al
    Dossier Farmaceutico. In questo caso è obbligatorio che non vi siano
    interdipendenze tra le risorse contenute nel *Bundle*.

Il *Sender* specifica la tipologia di interazione nel campo
*Bundle.type*. Si sottolinea inoltre che è necessario valorizzare il
campo *Bundle.request* con gli elementi *method* (uguale a “POST”) e
*url* (che può essere valorizzato con il nome della risorsa FHIR).

Ulteriori dettagli sulle tipologie di interazione *transaction* e
*batch* previste dallo standard FHIR sono illustrati
[qui](https://www.hl7.org/fhir/http.html#transaction).

2.  *Invio singola risorsa FHIR*

In questo scenario, il *Sender* invia un’unica risorsa al *Receiver*
rispettando i vincoli posti dai profili illustrati nella presente guida.

Il *Receiver* processa la richiesta ottenuta e, se non riscontra errori,
alimenta il Dossier Farmaceutico e restituisce al *Sender* un messaggio
di risposta di successo alla richiesta effettuata mediante metodo POST.
In caso contrario, il *Receiver* restituisce un messaggio di risposta di
fallimento.

### Aggiornamento del Dossier Farmaceutico

{% include sequence-2.svg %}

L’attore *Sender* aggiorna il contenuto del Dossier Farmaceutico
trasmettendo all’attore *Receiver* un insieme di informazioni
rappresentate in risorse FHIR.

L’aggiornamento può essere effettuato secondo due approcci alternativi:

1.  *Invio di una singola risorsa FHIR*

In questo scenario, il *Sender* crea la risorsa da aggiornare e la pone
nel corpo del messaggio di richiesta da trasmettere al *Receiver* con
metodo PUT. Il *Receiver* processa la richiesta e fornisce un messaggio
di risposta.

2.  *Invio di più risorse FHIR nella stessa interazione*

In questo scenario, il *Sender* aggiorna il Dossier Farmaceutico
trasmettendo, attraverso il metodo POST, le seguenti risorse all’interno
della risorsa *Bundle*, valorizzata come specificato per lo scenario
*Alimentazione del Dossier Farmaceutico*:

  - Una risorsa
    [ProvenanceForDossier](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-ProvenanceForDossier.html)
    e una o più risorse [MedicationRequest - Dossier
    Farmaceutico](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-MedicationRequest-it-dossierPharma.html)
    in caso di prescrizioni;

  - Una risorsa
    [ProvenanceForDossier](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-ProvenanceForDossier.html)
    e una o più risorse [MedicationDispense - Dossier
    Farmaceutico](https://build.fhir.org/ig/hl7-it/dossier-pharma/StructureDefinition-MedicationDispense-it-dossierPharma.html)
    in caso di erogati.

Anche in questo caso è possibile utilizzare i metodi di interazione
*transaction* o *batch*. Dopo l’elaborazione della richiesta, il
*Receiver* fornisce un messaggio di risposta al *Sender*.

### Consultazione del Dossier Farmaceutico

{% include sequence-3.svg %}

Un attore *Consumer* può consultare il Dossier Farmaceutico inviando una
richiesta all’attore *Provider* che può essere basata su due modalità
alternative, entrambe basate su metodi GET o POST:

1.  Richiesta effettuata attraverso una operazione atta recuperare le
    informazioni del paziente inerenti ad uno specifico identificativo
    di prescrizione (NRE);

2.  Richiesta effettuata attraverso parametri di ricerca diversi dal
    NRE, quali: i) l’identificativo di un farmaco, ii) un periodo
    temporale e iii) la codifica AIC di un farmaco e il numero di lotto.
    Tali parametri sono utilizzati per recuperare risorse all’interno di
    una o più risorse *Bundle*.

Ulteriori dettagli sulle modalità di ricerca di risorse FHIR sono
illustrati [qui](https://www.hl7.org/fhir/search.html).
