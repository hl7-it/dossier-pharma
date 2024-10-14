CodeSystem: MotivoSostituzione
Id: motivo-sostituzone
Title: "Motivazione di sostituzione"
Description: "Motivazione di sostituzione"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #1 "Sostituzione etico con generico"
* #2 "Sostituzione generico con altro generico"
* #3 "Generico irreperibile, differenza importo sul Prezzo di Rif. a carico SSN"
//-------------------------------------------------------------------------------------------

//======================================================
CodeSystem: CodiceSostituzoneSostanza
Id: codice-sostituzione-sostanza
Title: "Codice sostituzione sostanza"
Description: "Codice sostituzione sostanza"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #A "Il codice inserito nel campo si riferisce ad un codice AIC, riferito allo stesso farmaco prescritto dal medico, ma che il farmacista ritiene più aggiornato come codice"
* #S "Il codice AIC inserito nel campo rappresenta una sostituzione di farmaco, prevista per legge, rispetto a quanto indicato dal medico prescrittore"
* #V "Il codice prestazione inserito nel campo è stato variato dall’erogatore specialistico rispetto a quanto prescritto dal medico"
//-------------------------------------------------------------------------------------------

//TODO: is it the right CS?
//======================================================
CodeSystem: CsAifaAic
Id: aifa-aic
Title: "AIFA - Autorizzazione Immissione in Commercio"
Description: "AIFA - Autorizzazione Immissione in Commercio."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #031981069 "PANTORC - 28CPR GASTR 20MG"
* #033736075 "AIRCORT NEBUL20FL 2ML 0,5MG/ML"
* #027860042 "ZITROMAX 3CPR RIV 500MG"
* #020609083 "ISOPTIN*30 cpr riv 80 mg"
* #039785050 "AUGMENTIN 875 MG/125 MG COMPRESSE RIVESTITE CON FILM"
* #037568019 "5 MICROGRAMMI SOLUZIONE INETTABILE - USO SOTTOCUTANEO PENNA PRERIEMPITA (VETRO)"
//-------------------------------------------------------------------------------------------

//======================================================
CodeSystem: CsAifaNota
Id: aifa-nota
Title: "AIFA - Indicazioni terapeutiche (Nota AIFA)"
Description: "AIFA - Indicazioni terapeutiche per le quali un determinato farmaco è rimborsabile a carico del Servizio Sanitario Nazionale. Conosciute come Note AIFA."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
* #01 "Farmaco in nota: pantoprazolo, omeprazolo, misoprostolo, lansoprazolo, esomeprazolo"
* #02 "Farmaco in nota: acido chenoursodesossicolico, acido tauroursodesossicolico, acido ursodesossicolico"
* #04 "Farmaco in nota: duloxetina, gabapentin, pregabalin"
* #08 "Farmaco in nota: levocarnitina"
* #11 "Farmaco in nota: Calcio folinato"
* #13 "Farmaci in Nota: Ipolipemizzanti:Fibrati: bezafibrato, fenofibrato, gemfibrozil
Statine: simvastatina, pravastatina, fluvastatina, lovastatina, atorvastatina, rosuvastatina
Altri: PUFA-N3, ezetimibe"
* #15 "Farmaco in nota: Albumina umana"
* #28 "Farmaco in nota: Megestrolo, Medrossiprogesterone"
* #31 "Farmaco in nota: Levodropropizina, Diidrocodeina  Acido benzoico, Diidrocodeina"
* #36 "Farmaco in nota: Testosterone"
* #39 "Farmaci in nota: somatropina, Somatrogon"
* #41 "Farmaco in nota: Calcitonina"
* #42 "Farmaco in nota: Acido etidronico, Acido clodronico"
* #48 "Farmaco in nota: Acido etidronico, Acido clodronico"
* #51 "Farmaci in nota: Analoghi del LHRH: Buserelina, Goserelina, Leuprorelina, Triptorelina Modulatori selettivi del Recettore del Progesterone: Ulipristal acetato Antagonisti dell ormone di rilascio delle gonadotropine, estrogeno e progestinico (in associazione): relugolix, estradiolo (come emiidrato) (E2), noretisterone acetato (NETA)"
* #55 "Farmaco in nota: Tobramicina, Piperacillina + Tazobactam, Piperacillina, Netilmicina, Mezlocillina, Gentamicina, Ceftazidima, Cefepime, Ampicillina + Sulbactam, Amikacina"
* #56 "Farmaco in nota: Teicoplanina, Rifabutina, Imipenem + Cilastatina, Aztreonam"
* #65 "Farmaco in nota: Glatiramer acetato - Interferone β-1a - Interferone β-1b - Teriflunomide - Dimetilfumarato - Peginterferone beta-1a"
* #66 "Farmaco in nota: Tenoxicam, Sulindac, Proglumetacina, Piroxicam, Oxaprozina, Nimesulide, Naprossene, Nabumetone, Meloxicam, Lornoxicam, Ketoprofene, Indometacina, Ibuprofene, Furprofene, Flurbiprofene, Fentiazac, Etoricoxib, Diclofenac + Misoprostolo, Diclofenac, Dexibuprofene, Codeina e ibuprofene, Cinnoxicam, Celecoxib, Amtolmetina, Acido tiaprofenico, Acido mefenamico, Acetametacina, Aceclofenac"
* #74 "Farmaco in nota: Urofollitropina, Menotropina, Lutropina alfa, Follitropina delta, Follitropina beta, Follitropina alfa/Lutropina alfa, Follitropina alfa, Coriogonadotropina alfa, Corifollitropina alfa"
* #75 "Farmaco in nota: Vardenafil, Tadalafil, Sildenafil, Avanafil, Alprostadil"
* #79 "Farmaci a carico SSN inclusi nella 79: Alendronato, Bazedoxifene, Denosumab, Ibandronato, Raloxifene, Risedronato, Romosozumab, Teriparatide, Zoledronato"
* #82 "Farmaco in nota: Zafirlukast, Montelukast"
* #83 "Farmaco in nota: Carbomer"
* #84 "Farmaco in nota: Valaciclovir, Famciclovir, Brivudina, Aciclovir"
* #85 "Farmaci a carico SSN inclusi nella 85: donepezil - galantamina - rivastigmina - memantina"
* #87 "Farmaci in Nota: fesoterodina, ossibutina, solifenacina, tolterodina"
* #88 "Farmaco in nota: Corticosteroidi, preparati dermatologici"
* #89 "Farmaco in nota: Prometazina, Oxatomide, Mizolastina, Loratadina, Levocetirizina, Ketotifene, Fexofenadina, Ebastina, Desloratadina, Cetirizina, Acrivastina, Rupatadina"
* #90 "Farmaco in nota: Naloxegol, Metilnaltrexone, Naldemedina"
* #91 "Farmaco in nota: Febuxostat"
* #92 "Farmaco in nota: Benzilpenicillina benzatinica"
* #93 "Farmaco in nota: Midazolam oromucosale"
* #95 "Farmaci in Nota : diclofenac 3% in ialuronato di sodio, 5-Fluorouracile/Acido salicilico (per la cheratosi attinica); Imiquimod crema 3,75%, 5-Fluorouracile 4%, Tirbanibulina 10 mg/g unguento (per la cheratosi attinica non ipercheratosica non ipertrofica)."
* #96 "Farmaci in Nota: colecalciferolo, colecalciferolo/Sali di calcio, calcifediolo"
* #97 "Farmaci in Nota:  AVK : Warfarin, Acenocumarolo -  NAO/DOAC : Dabigatran, Apixaban, Edoxaban, Rivaroxaban"
* #98 "Farmaci in nota: aflibercept ,  bevacizumab (L. 648/96), brolucizumab, faricimab, ranibizumab"
* #99 "Farmaci in Nota : medicinali per uso inalatorio (limitatamente ai dosaggi/formulazioni autorizzati per la terapia inalatoria di mantenimento della BPCO) a base dei seguenti principi attivi:  LABA : Formoterolo, Indacaterolo, Olodaterolo, Salmeterolo -  LAMA : Aclidinio, Glicopirronio, Tiotropio, Umeclidinio -  LABA + ICS  (unico erogatore) - Formoterolo/Beclometasone, Formoterolo/Budesonide, Salmeterolo/Fluticasone Propionato, Vilanterolo/Fluticasone Furoato -  LABA + LAMA  (unico erogatore): Indacaterolo/Glicopirronio, Vilanterolo/Umeclidinio, Olodaterolo/Tiotropio, Formoterolo/Aclidinio -  ICS + LABA + LAMA  (unico erogatore): Beclometasone Dipropionato/Formoterolo Fumarato Diidrato/Glicopirronio Bromuro, Fluticasone Furoato/ Umeclidinio Bromuro/ Vilanterolo Trifenatato, Budesonide/glicopirronio bromuro/ formoterolo fumarato diidrato."
* #100 "Farmaci in Nota: INIBITORI SGLT2: canagliflozin - dapagliflozin - empagliflozin - ertugliflozin
AGONISTI RECETTORIALI GLP1: dulaglutide - exenatide - exenatide LAR - liraglutide - lixisenatide - semaglutide orale - semaglutide sottocutanea
INIBITORI DPP4: alogliptin - linagliptin - saxagliptin - sitagliptin - vildagliptin
ASSOCIAZIONI PRECOSTITUITE: canagliflozin/metformina - dapagliflozin/metformina - empagliflozin/metformina - empagliflozin/linagliptin - ertugliflozin/metformina - ertugliflozin/sitagliptin - saxagliptin/dapagliflozin - degludec/liraglutide - glargine/lixisenatide - alogliptin/metformina - alogliptin/pioglitazone - linagliptin/metformina - saxagliptin/metformina - sitagliptin/metformina - vildagliptin/metformina"
* #101 "Farmaci in Nota: Anticoagulanti orali inibitori della vitamina K (AVK): warfarin - acenocumarolo
Inibitori diretti della trombina o del fattore Xa (NAO/DOAC): dabigatran - apixaban - edoxaban - rivaroxaban"


//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsItRoleCode
Id: it-V3RoleCode
Title: "HL7 Italia - HL7 V3 RoleCode (estensione)"
Description: "Estensione del Vocabolario HL7 V3 RoleCode"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^caseSensitive = true 
* #MMG  "medico medicina generale"
* #PLS  "pediatra di libera scelta"
* #MSD  "medico del servizio/struttura del distretto/azienda" 
* #MCA  "medico continuità assistenziale" 
* #MO  "medico ospedaliero" 
* #MSA  "medico specialista ambulatoriale" 
* #MAU  "medico di azienda ospedaliero-universitaria" 
* #GMT  "guardia medica turistica" 
* #SPA  "specialista di struttura privata accreditata" 
* #MI  "medico INAIL" 
* #MC  "medico consulente" 
* #AS "altra specializzazione" 
* #AA "altro (tirocinanti, specializzandi, etc)"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//======================================================
CodeSystem: CsEsenzioni
Id: mds-esenzioni
Title: "MDS - Esenzione dal ticket"
Description: "MDS - Codici per l'esezione dal tichet"
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 

* #E01 "Cittadini di età inferiore a 6 anni e superiore a 65 anni, appartenenti ad un nucleo familiare con reddito annuo complessivo non superiore a 36.151,98 euro."
* #E02 "Disoccupati e loro familiari a carico appartenenti ad un nucleo familiare con un reddito annuo complessivo inferiore a 8.263,31 euro, incrementato fino a 11.362,05 euro in presenza del coniuge ed in ragione di ulteriori 516,46 euro per ogni figlio a carico."
* #E03 "Titolari di pensioni sociali e loro familiari a carico."
* #E04 "Titolari di pensioni al minimo di età superiore a 60 anni e loro familiari a carico, appartenenti ad un nucleo familiare con un reddito annuo complessivo inferiore a 8.263,31 euro, incrementato fino a 11.362,05 euro in presenza del coniuge ed in ragione di ulteriori 516,46 euro per ogni figlio a carico."
* #E52  "Soggetti sottoposti a trapianto (rene, cuore, polmone, fegato, pancreas, midollo, intestino)"
* #G01 "Invalidi di guerra appartenenti alle categorie dalla 1° alla 5° titolari di pensione diretta vitalizia e deportati in campi di sterminio (ex art.6 DM 1.2.1991)"
* #L01 "Grandi invalidi del lavoro dall'80% al 100% di invalidità (ex art.6 DM 1.2.1991)"
* #L02 "Invalidi del lavoro con riduzione della capacità lavorativa > 2/3 dal 67% al 79% di invalidità (ex art.6 DM 1.2.1991)"
* #S01 "Grandi invalidi per servizio appartenenti alla 1° categoria, titolati di specifica pensione (ex art.6 DM 1.2.1991)"
* #S02 "Invalidi per servizio appartenenti alle categorie dalla 2° alla 5° (ex art.6 DM 1.2.1991)"
* #C01 "Invalidi civili al 100% di invalidità senza indennità di accompagnamento (ex art.6 DM 1.2.1991)"
* #C02 "Invalidi civili al 100% di invalidità con indennità di accompagnamento (ex art.6 DM 1.2.1991)"
* #C03 "Invalidi civili con riduzione della capacità lavorativa superiore a 2/3 dal 67% al 99% di invalidità (ex art.6 DM 1.2.1991)"
* #C04 "Invalidi < di 18 anni con indennità di frequenza ex art. 1 L. 289/90 (ex art.5 D.lgs. 124/98)"
* #C05 "Ciechi assoluti o con residuo visivo non superiore a 1/10 ad entrambi gli occhi riconosciuti dalla Commissione Invalidi Ciechi Civili (art.6 DM 1.2.1991)"
* #C06 "Sordomuti (chi è colpito da sordità dalla nascita o prima dell'apprendimento della lingua parlata - art.6 DM 1.2.1991, ex art.7 L.482/68 come modificato dalla L.68/99)"
* #V01 "Vittime atti di terrorismo e stragi e familiari (L. 206/04) /vittime dovere e familiari superstiti (D.P.R. 7 luglio 2006, n. 243)"
* #G02 "Invalidi di guerra militari appartenenti alle categorie dalla 6° alla 8° (ex art.6 DM 1.2.1991)"
* #L03 "Invalidi del lavoro con riduzione della capacità lavorativa fino a 2/3 dall'1% a 66% di invalidità (ex art.6 DM 1.2.1991)"
* #L04 "Infortunati sul lavoro o affetti da malattie professionali (ex art.6 DM 1.2.1991)"
* #S03 "Invalidi per servizio appartenenti alla categoria dalla 6° all'8° (ex art.6 DM 1.2.1991)"
//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CSStatoEsenzione
Id: cs-statoEsenzione
Title: "Stato Esenzioni"
Description: "Codesystem basato sul vocabolario HL7 V3 ActStatus che descrive lo stato delle esenzioni."
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 
//-------------------------------------------------------------------------------------------
* #active "attivo" // "Esenzione in corso di validità"
* #suspended  "sospeso" // "Esenzione momentaneamente sospesa (ad esempio in attesa del rinnovo di un’iscrizione temporanea)"
* #aborted  "abortito" // "Esenzione mai stata valida (ad esempio è stata assegnata per errore e il documento corrispondente era già stato prodotto in stato active)"
* #completed "completato" // "Esenzione non più in corso di validità"
* #UNK "sconosciuto"
 