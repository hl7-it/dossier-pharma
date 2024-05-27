Instance: ProvenanceDossierExample001
InstanceOf: ProvenanceDossier
Title: "ProvenanceDossier da NRE"
Description: "Esempio ProvenanceDossier da NRE - Risorse prodotte direttamente dai sistemi regionali"
Usage: #example

* id = "Provenance-it-dossierPharma-ex001"
* target[0] = Reference(MedicationRequestDossierExample003)
* target[+] = Reference(MedicationRequestDossierExample004)
* recorded = "2022-01-31T15:30:00.000Z"
* agent.who.identifier 
  * system = $minsan-regione
  * value = "050"
* entity
  * role = #derivation
  * what.identifier
    * system = "urn:oid:2.16.840.1.113883.2.9.2.50.4.5.3.10"
    * value = "2.16.840.1.113883.2.9.2.109.4.4.050A05714294322"
