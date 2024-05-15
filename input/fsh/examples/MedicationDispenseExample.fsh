Instance: MedicationDispense-Dossier-Esempio
InstanceOf: MedicationDispenseItDossierPharma
Title: "Esempio Erogazione Farmaceutica"
Description: "Esempio di un'Erogazione farmaceutica con farmaco sostituito da un farmaco generico rispetto al prescritto"
Usage: #example
* status = #in-progress
* extension[recorded].valueDateTime = "2024-07-09"
* medicationCodeableConcept.coding[AIC] = $aic#020609083 "ISOPTIN*30 cpr riv 80 mg"
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* performer[CFErogatore].actor.identifier.system = "http://hl7.it/sid/codiceFiscale" //TO DO fare il perfomer
* performer[CFErogatore].actor.identifier.value = "RSSMRT57D12D612R" 
* authorizingPrescription = Reference(MedicationRequestDossierExample005)
* quantity.value = 1.0
* whenHandedOver = "2024-05-09T17:13:00+05:00"
* substitution.type = codice-sostituzione-sostanza#A "Il codice inserito nel campo si riferisce ad un codice AIC, riferito allo stesso farmaco prescritto dal medico, ma che il farmacista ritiene più aggiornato come codice" //"Composizione equivalente"
//* substitution.type.coding.system = $DIZ_Sostituzione
//* substitution.type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution"
* substitution.reason.coding.code = $v3-ActReason#2 "Sostituzione generico con altro generico"
* substitution.reason.coding.system = $v3-ActReason
* substitution.wasSubstituted = true
* substitution.responsibleParty = Reference(Practitioner/PractitionerExample)
