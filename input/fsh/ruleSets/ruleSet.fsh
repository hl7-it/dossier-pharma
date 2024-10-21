RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}

RuleSet: ImposeProfile ( profile )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-dependencies].valueCanonical = {profile}