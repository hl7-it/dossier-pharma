Alias: $reason-medication-given = http://terminology.hl7.org/CodeSystem/reason-medication-given
Alias: $sct = http://snomed.info/sct
Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Instance: medadmin0301
InstanceOf: MedicationAdministration
Usage: #example
* contained[0] = med0301
* contained[+] = signature
* status = #in-progress
* medicationReference = Reference(med0301)
* subject.identifier
  * system = $CF
  * value = "RSSMRT57D12D612R"
* context = Reference(Encounter/f001) "encounter who leads to this prescription"
* effectivePeriod.start = "2015-01-15T14:30:00+01:00"
* performer.actor = Reference(Practitioner/PractitionerExample)
* reasonCode = $reason-medication-given#b "Given as Ordered"
* request = Reference(MedicationRequest/MedicationRequestDossierExample005)
* dosage.text = "Isoptin 80 mg (1cpx3DIE) 8,16,24h"
* dosage.route = $sct#26643006  "Oral use"
* dosage.dose = 80 'mg' "mg"

Instance: med0301
InstanceOf: Medication
Usage: #example
* code = $aic#020609083 "80 MG COMPRESSE RIVESTITE CON FILM"