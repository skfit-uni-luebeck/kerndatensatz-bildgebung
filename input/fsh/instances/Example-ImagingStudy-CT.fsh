Instance: mii-exa-bildgebung-bildgebungsstudie-ct
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study CT"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund].valueString = "Verdacht auf Karzinom"
* status = #available
* subject = Reference(Patient/PatExample)
* subject.identifier.type = $v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(Encounter/EncExample)
* basedOn = Reference(ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 2
* numberOfInstances = 390
* procedureReference = Reference(Procedure/mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(Condition/CondExample)
* description = "whole body aquisition"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[CTDIvol].valueQuantity.value = 4.04
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[CTDIvol].valueQuantity.unit = "milligray"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[KVP].valueQuantity.value = 110
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[KVP].valueQuantity.unit = "kilovolt"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposure].valueQuantity.value = 38
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposure].valueQuantity.unit = "milliampere second"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposureTime].valueQuantity.value = 600
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposureTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[xRayTubeCurrent].valueQuantity.value = 96
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[xRayTubeCurrent].valueQuantity.unit = "milliampere"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller].extension[manufacturer].valueString = "Beispielhersteller" 
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller].extension[manufacturerModelName].valueString = "Beispielmodell"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = true
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = $DCM#CT "Computed Tomography"
* series.description = "AC LD CT Whole Body 4.0 HD Field of View"
* series.numberOfInstances = 195
* series.bodySite = $SCT#51185008 "Thoracic structure (body structure)"
* series.laterality = $SCT#7771000 "Left"
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.value = 1.36
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.value = 1.36
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.value = 4
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueString = "DERIVED, PRIMARY"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance.number = 31
