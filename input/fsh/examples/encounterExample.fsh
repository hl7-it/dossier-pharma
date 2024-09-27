Instance: Encounter-Dossier-Esempio
InstanceOf: Encounter
Title: "Encounter ambulatoriale"
Description: "Esempio di incontro: informazioni di base per descrivere un incontro ambulatoriale pianificato"
Usage: #example
* id = "7b06368c-7089-4f66-acc8-29e1fcbd31f6"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(Patient/Patient-Dossier-Esempio)
* period.start = "2023-02-25T11:45:00+01:00"
* period.end = "2023-02-25T12:45:00+01:00"
* participant.individual = Reference(Practitioner/PractitionerExample)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "Secondary performer"