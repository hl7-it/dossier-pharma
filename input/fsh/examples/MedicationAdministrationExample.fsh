Instance: MedicationAdministration-Dossier-Esempio
InstanceOf: MedicationAdministrationDossierPharma
Title: "MedicationAdministration somministrazione ISOPTIN"
Description: "Esempio di assunzione del farmaco Isoptin da parte di un paziente "
Usage: #example
* status = #active
* id = "5bd5129b-15be-4f6b-bbe0-a2dd645d6a6a"
* contained[0] = Medication-Dossier-Esempio
* status = #in-progress
* medicationReference = Reference(Medication-Dossier-Esempio)
// * subject.identifier
//   * system = $CF
//   * value = "RSSMRT57D12D612R"
* subject = Reference(Patient-Dossier-Esempio)
* context = Reference(Encounter-Dossier-Esempio) 
* effectivePeriod.start = "2015-01-15T14:30:00+01:00"
* performer.actor = Reference(PractitionerExample)
* reasonCode = $reason-medication-given#b "Given as Ordered"
* request = Reference(MedicationRequestDossierExample005)
* dosage.text = "Isoptin 80 mg (1cpx3DIE) 8,16,24h"
* dosage.route = $sct#26643006  "Oral use"
* dosage.dose = 80 'mg' "mg"


// TO DO ADMINISTRATION AUGMENTIN