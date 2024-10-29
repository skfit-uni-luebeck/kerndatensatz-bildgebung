//Head
Profile: MII_PR_Bildgebung_Geraet
Parent: Device
Id: mii-pr-bildgebung-geraet
Title: "MII PR Bildgebung Gerät"
Description: "Dieses Profil beschreibt das genutzte Gerät in der radiologischer Bildgebung. Es bietet die Möglichkeit, Informationen über das Gerät strukturiert abzubilden."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Device)
* insert Translation(^title, en-US, MII PR Imaging Device)
* insert Translation(^description, en-US, The profile describes a device for radiological images.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Translation Profile
* insert Translation(manufacturer ^short, de-DE, Hersteller)
* insert Translation(manufacturer ^short, en-US, manufacturer)
* insert Translation(manufacturer ^definition, de-DE, Hersteller des Aufnahmegeräts)
* insert Translation(manufacturer ^definition, en-US, manufacturer of the imagingdevice)
* insert Translation(deviceName ^short, de-DE, Gerätename)
* insert Translation(deviceName ^short, en-US, device name)
* insert Translation(deviceName ^definition, de-DE, Name und Modell des Aufnahmegeräts)
* insert Translation(deviceName ^definition, en-US, name and model of the imagingdevice)
//Profile
* manufacturer MS
* deviceName MS