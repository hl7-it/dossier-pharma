Instance: MedicationDispense-Dossier-Esempio
InstanceOf: MedicationDispense
Title: "Esempio Erogazione Farmaceutica"
Description: "Esempio di un'Erogazione farmaceutica con farmaco sostituito da un farmaco generico rispetto al prescritto"
Usage: #example
* status = #in-progress
* medicationCodeableConcept = $aic#020609083 "ISOPTIN*30 cpr riv 80 mg"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* performer[0].actor = Reference(Performer/example) //TO DO fare il perfomer
* authorizingPrescription = Reference(MedicationRequestDossierExample005)
* quantity = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORCAP
* whenHandedOver = "2024-05-09T17:13:00+05:00"
* substitution.type.coding.code = $v3-substanceAdminSubstitution#EC
* substitution.type.coding.system = $DIZ_Sostituzione
* substitution.reason.coding.code = $v3-ActReason#2 "Sostituzione generico con altro generico"
* substitution.wasSubstituted = true
* substitution.responsibleParty = Reference(Practitioner/PractitionerExample)