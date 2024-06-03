### Scopo

Questa guida ha lo scopo di definire i profili [HL7 FHIR](http://hl7.org/fhir) da utilizzare per l'implementazione del dossier farmaceutico, il quale appartiene al nucleo minimo dei documenti del Fascicolo Sanitario Elettronico.

### Definizione del Dossier Farmaceutico

Nel DPCM n.178 del 2015 il dossier farmaceutico è definito come “la parte specifica del FSE istituita per favorire la qualità, il monitoraggio, l'appropriatezza nella dispensazione dei medicinali e l'aderenza alla terapia ai fini della sicurezza del paziente, aggiornato a cura della farmacia che effettua la dispensazione.”
Il dossier quindi rappresenta l’insieme delle informazioni farmaceutiche sul singolo paziente, relativamente sia alle terapie SSN, prescritte, somministrate ed erogate, che alle terapie non convenzionali (omeopatia, fitoterapia, integratori…) e alle terapie non SSN (farmaci) acquistate direttamente dal paziente.

<!-- In linea con gli scopi definiti dal DPCM sopra riportato, il dossier farmaceutico ha funzioni esclusivamente cliniche, e in particolare per la valutazione dell'appropriatezza nella dispensazione dei medicinali e dell'aderenza alla terapia ai fini della sicurezza del paziente, è necessario che il dossier rappresenti l’insieme delle informazioni farmaceutiche sul singolo paziente, relativamente sia alle terapie SSN, prescritte, somministrate ed erogate, che alle terapie non convenzionali (omeopatia, fitoterapia, integratori…) e alle terapie non SSN (farmaci) acquistate direttamente dal paziente.

Per garantire i fini sopra descritti, è necessario prevedere che il dossier farmaceutico venga aggiornato e sia consultabile, nel rispetto della privacy secondo quanto previsto dal DPCM n. 178 del 2015, da tutti gli attori che sono coinvolti nella terapia seguita dal paziente convenzionale e non, oltre al solo farmacista, in deroga a quanto indicato nel DPCM stesso. -->

### Funzionalità del Dossier Farmaceutico
La funzionalità principale del dossier farmaceutico è quella di raccogliere i principali elementi che descrivono il processo di prescrizione, erogazione e somministrazione di un farmaco. In questa IG i profili principali utilizzati sono:

- MedicationRequest: rapprensenta di una prescrizione farmaceutica in standard FHIR, in quanto documento essenziale per ottenere i farmaci che richiedono una prescrizione medica;
- MedicationDispense: rapprensenta un'erogazione farmaceutica in standard FHIR, generata quando la prescrizione viene evasa da parte del professionista autorizzato;
- MedicationAdministration: documenta l'effettiva somministrazione di un farmaco ad un paziente in standard FHIR 

<!-- La funzionalità principale del dossier farmaceutico, per evitare che diventi un contenitore di dati poco fruibili per le finalità cliniche ad esso associato, dovrà restituire tramite una funzionalità definita “on demand”, denominata “Medication List”, il riassunto delle informazioni principali inserite all’interno del dossier farmaceutico in un certo arco temporale. L’alimentazione dei contenuti all’interno del dossier farmaceutico e la loro visualizzazione è vincolata alle fasi di implementazione precedentemente descritte.

Il “Medication List” non sarà un documento in quanto, per sua natura non è possibile definire un titolare unico delle informazioni mostrate tramite questa funzionalità “on demand”.

Le funzionalità aggiuntive esemplificative che potranno essere implementate sono:
  - verificare l’appropriatezza d’uso dei farmaci in base alle terapie prescritte, erogate, somministrate al paziente;

  - verificare l’aderenza alla terapia, sia in termini di prescritto/erogato che di giorni di esposizione ad uno specifico trattamento in un dato periodo di osservazione. L’aderenza inoltre è supportata dalle informazioni che le singole Regioni possono autonomamente gestire in merito alla compilazione di questionari e di algoritmi per valutare l’aderenza della terapia;
  - dare informazioni sull’interazione tra farmaci: questa funzionalità permette di segnalare eventuali interazioni fra i farmaci prescritti e erogati sia in fase di prescrizione che di erogazione;
  - ricordare l’assunzione dei farmaci con la possibilità da parte dell’utente anche di contrassegnare che l’assunzione/somministrazione sia avvenuta;
  - favorire la ricognizione/riconciliazione terapeutica. Questo processo è fondamentale nel passaggio ad un diverso care setting del paziente per garantire la sicurezza della terapia;
  - dare supporto a progetti Regionali ai fini del dossier farmaceutico.  

Le funzionalità eventualmente implementate dalle singole Regioni saranno disponibili solo all'interno delle stesse fintanto ché non verranno stabilite le caratteristiche tecniche per consentirne la fruibilità a livello nazionale. -->

### Dipendenze
{% include dependency-table.xhtml %}

### Details
#### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}


### Autori e Contributori

<table>
<thead>
<tr class="header">
<th>Ruolo</th>
<th>Nome</th>
<th>Organizzazione</th>
<th>Contatto</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Leonardo Alcaro</td>
<td>HL7 Italia</td>
<td>leonardo.alcaro@teamdigitale.governo.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Mario Sicuranza</td>
<td>HL7 Italia</td>
<td>mario.sicuranza@icar.cnr.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Davide Spanu</td>
<td>EY Advisory S.p.A.</td>
<td>davide.spanu@it.ey.com</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Valeria Cesarò</td>
<td>EY Advisory S.p.A.</td>
<td>valeria.cesaro@it.ey.com</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Maria Giovanna Antida Preziosi</td>
<td>SOGEI</td>
<td>mpreziosi@sogei.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Giorgio Cangioli</td>
<td>HL7 Italia</td>
<td>giorgio.cangioli@gmail.com</td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Gregorio Canal</td>
<td>Arsenàl.IT</td>
<td>gcanal@consorzioarsenal.it</td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Isabella Sgro</td>
<td>Arsenàl.IT</td>
<td>isgro@consorzioarsenal.it</td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Angela Montesu</td>
<td>Arsenàl.IT</td>
<td>amontesu@consorzioarsenal.it</td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Samantha De Biasio</td>
<td>Arsenàl.IT</td>
<td>sdebiasio@consorzioarsenal.it</td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Alessandro Pinton</td>
<td>Arsenàl.IT</td>
<td>apinton@consorzioarsenal.it</td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Alberto Dessena</td>
<td>Agid</td>
<td></td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Emanuele Bianchi Janetti</td>
<td>Individuale</td>
<td></td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Mario Ciampi</td>
<td>CNR ICAR</td>
<td>mario.ciampi@icar.cnr.it</td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Mario Sicuranza</td>
<td>CNR ICAR</td>
<td>mario.sicuranza@icar.cnr.it</td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Stefano Dalmiani</td>
<td>FTGM</td>
<td></td>
</tr>
<tr class="even">
<td>Contributore</td>
<td>Matteo Damiani</td>
<td>NBS</td>
<td></td>
</tr>
</tbody>
</table>

### Intellectual Property Statements
{% include ip-statements.xhtml %}