Profile: LocationItDossierPharma
Parent: Location
Id: Location-it-dossierPharma
Title:    "Location - Dossier Farmaceutico"
Description: "Profilo Location per Dossier Farmaceutico. Usato per identificare il luogo dove è avvenuta l'erogazione del farmaco"

* . ^short = "Luogo di erogazione del farmaco"
* identifier 1.. MS
  * ^short = "Identificativo delle struttura (luogo) di erogazione del farmaco"
  * system 1..  MS
  * value  1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains
    farmacia 0..1
    and azienda 0..1
	and strutturaHos 0..1 
	and	strutturaRic 0..1
	
* identifier[farmacia]
  * ^short = "Farmacia"
  * system = $minsan-farmacie
* identifier[azienda]
  * ^short = "Azienda Sanitaria ed Ospedaliera"
  * system = $minsan-fls
* identifier[strutturaHos]
  * ^short = "Struttura di ricovero"
  * system = $minsan-hsp
* identifier[strutturaRic]
  * ^short = "Strutture di ricovero pubbliche, istituti e centri di riabilitazione pubblici"
  * system = $minsan-ria

