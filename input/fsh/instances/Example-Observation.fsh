Instance: mii-exa-bildgebung-radiologische-beobachtung
InstanceOf: MII_PR_Bildgebung_Radiologische_Beobachtung
Usage: #example
Title: "MII Example Bildgebung Radiologische Beobachtung"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-uid].valueId = "example-serie-uid"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "example-instanz-uid"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure].valueReference = Reference(BodyStructure/example)
* partOf = Reference(Procedure/Readexample)
* status = #final
* category = $observation-category#imaging
* code = $loinc#32422-8 "Physical findings of Breast"
* subject = Reference(Patient/example)
* issued = "2024-07-19T12:03:30+02:00"
* valueString = "microcalcifications in the upper outer quadrant in the left breast"
* bodySite = $SCT#76752008 "Breast structure (body structure)"
* hasMember = Reference(Observation/example)
* derivedFrom = Reference(ImagingStudy/example)
* component.code = $loinc#10157-6 "History of family member diseases Narrative"
* component.valueBoolean = true
