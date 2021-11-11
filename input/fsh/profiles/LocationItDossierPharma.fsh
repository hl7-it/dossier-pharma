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
    farmacia 0..1 and
    asl 0..1
* identifier[farmacia]
  * ^short = "Farmacia"
  * system = $minsan-farmacie
* identifier[asl]
  * ^short = "ASL"
  * system = $minsan-fls

