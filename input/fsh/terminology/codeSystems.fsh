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