Instance: MedicationAdministration-Dossier-Esempio
InstanceOf: MedicationAdministrationDossierPharma
Title: "MedicationAdministration somministrazione ISOPTIN"
Description: "Esempio di assunzione del farmaco Isoptin da parte di un paziente"
Usage: #example
* status = #active
* id = "5bd5129b-15be-4f6b-bbe0-a2dd645d6a6a"
* contained[0] = Medication-Dossier-Esempio
* status = #in-progress
* medicationReference = Reference(Medication-Dossier-Esempio)
* subject = Reference(Patient-Dossier-Esempio)
* context = Reference(Encounter-Dossier-Esempio) 
* effectivePeriod.start = "2015-01-15T14:30:00+01:00"
* performer.actor = Reference(PractitionerExample)
* reasonCode = $reason-medication-given#b "Given as Ordered"
* request = Reference(MedicationRequestDossierExample005)
* dosage.site = $sct#836005
* dosage.text = "Isoptin 80 mg 8,16,24h"
* dosage.route = $sct#26643006  "Oral use"
* dosage.dose = 80 'mg' "mg"
* dosage.rateRatio.numerator = 1 'PILL' "Pill"
* dosage.rateRatio.denominator = 3 'd'


Instance: MedicationAdministration-Dossier-Esempio2
InstanceOf: MedicationAdministrationDossierPharma
Title: "MedicationAdministration somministrazione di AUGMENTIN"
Description: "Esempio di assunzione di Augmentin da parte di un paziente"
Usage: #example
* status = #active
* id = "5bd5129b-15be-4f6b-bbe0-a2dd645d6a6c"
* contained[0] = Medication-Dossier-Esempio02
* status = #in-progress
* medicationReference = Reference(Medication-Dossier-Esempio02)
* subject = Reference(Patient-Dossier-Esempio)
* context = Reference(Encounter-Dossier-Esempio) 
* effectivePeriod.start = "2010-01-15T14:30:00+01:00"
* performer.actor = Reference(PractitionerExample)
* reasonCode = $reason-medication-given#b "Given as Ordered"
* request = Reference(MedicationRequestDossierExample006)
* dosage.site = $sct#836005
* dosage.text = "AUGMENTIN 875 MG/125 MG COMPRESSE RIVESTITE CON FILM"
* dosage.route = $sct#26643006  "Oral use"
* dosage.dose = 1 'PILL' "Pill"
* dosage.dose.system = $odf
* dosage.rateRatio.numerator = 1 $unitOfMeasure#PILL "Pill"
* dosage.rateRatio.denominator = 1 'd'

