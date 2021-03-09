//============== ALIAS ===============
Alias: COV_TYP = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: V3ActStatus = http://terminology.hl7.org/CodeSystem/v3-ActStatus
Alias: V3NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: AbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: dataAbsentReason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: CS_V3ItRoles = http://terminology.hl7.it/CodeSystem/it-v3RoleCode
Alias: StatoEsenzioneCoverage = http://hl7.it/fhir/StructureDefinition/coverage-exceptionStatus
// Alias: PractitionerMMG = http://hl7.it/fhir/StructureDefinition/Practitioner-mmg-it


Alias: CS_professioni = http://terminology.hl7.it/CodeSystem/istat-professioni
Alias: CS_TitoloStudio = http://terminology.hl7.it/CodeSystem/istat-ctsi03
Alias: professioniPaziente = http://hl7.it/fhir/ValueSet/istat-professione
Alias: titoloStudio = http://hl7.it/fhir/ValueSet/istat-titoloStudio
Alias: Translation = http://hl7.org/fhir/StructureDefinition/translation
Alias: ISO_SC_coding = http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding


Alias: PatientItBase = http://hl7.it/fhir/StructureDefinition/Patient-it-base
Alias: OrganizationItBase = http://hl7.it/fhir/StructureDefinition/Organization-it-base
Alias: PractitionerItBase = http://hl7.it/fhir/StructureDefinition/Practitioner-it-base
Alias: PractitionerRoleItBase = http://hl7.it/fhir/StructureDefinition/PractitionerRole-it-base


//====== Profili =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestItDossierPharma
Parent:   MedicationRequest
Id:       MedicationRequest-it-dossierPharma
Title:    "MedicationRequest - Dossier Farmaceutico"
Description: "Profilo MedicationRequest per Dossier Farmaceutico"
//-------------------------------------------------------------------------------------------
// * meta 1..1 MS
* status 1..1 MS
* intent 1..1 
* intent = #order
// * category MS
* subject 1..1 MS
* subject only Reference(PatientItBase)
* subject.type = "Patient" // add invariant richiesto se Reference assente
* subject.identifier ^short = "veicola l'identificativo del paziente"
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(OrganizationItBase or PractitionerItBase or PractitionerRoleItBase)
* reasonCode MS // AGGIUNEGERE BINDINGS
* groupIdentifier MS 
* groupIdentifier ^short = "Numero Ricetta Elettronica"
* groupIdentifier.system MS // add system
* groupIdentifier.value ^short = "NRE"
* insurance only Reference // add slice by type 
* dosageInstruction MS 
* dispenseRequest MS
* substitution.allowedBoolean ^short = "valorizzato 'false' se non è possibile sostituire il farmaco"
* substitution.reason ^short = "presente solo se non è possibile sostituire il farmaco" // add binding ed invariant 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementItDossierPharma
Parent:   MedicationStatement
Id:       MedicationStatement-it-dossierPharma
Title:    "MedicationStatement - Dossier Farmaceutico"
Description: "Profilo MedicationStatement per Dossier Farmaceutico"
//-------------------------------------------------------------------------------------------
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationItDossierPharma
Parent:   MedicationAdministration
Id:       MedicationAdministration-it-dossierPharma
Title:    "MedicationAdministration - Dossier Farmaceutico"
Description: "Profilo MedicationAdministration per Dossier Farmaceutico"
//-------------------------------------------------------------------------------------------
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationDispenseItDossierPharma
Parent:   MedicationDispense
Id:       MedicationDispense-it-dossierPharma
Title:    "MedicationDispense - Dossier Farmaceutico"
Description: "Profilo MedicationDispense per Dossier Farmaceutico"
//-------------------------------------------------------------------------------------------
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
