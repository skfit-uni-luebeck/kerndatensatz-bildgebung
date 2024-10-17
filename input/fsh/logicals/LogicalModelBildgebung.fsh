//Head
Logical: MII_LM_Bildgebung
Parent: Element
Id: mii-lm-bildgebung
Title: "MII LM Bildgebung"
Description: "MII LogicalModel Modul Bildgebung"
//Translation
* insert Translation(^name, en-US, MII_LM_Bildgebung)
* insert Translation(^title, en-US, MII LM Bildgebung)
* insert Translation(^description, en-US, MII LogicalModel Module Bildgebung)
//Meta
* insert Publisher
* insert PR_CS_VS_Version
* insert KDS_Copyright
* ^date = "2024-08-30"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/LogicalModel/Bildgebung"
* . ^short = "Das Erweiterungsmodul Bildgebung enthält Datenelemente zur Dokumentation Bildgebungsstudien und radiologischen Befundberichten"
//LM
* Koerperstruktur 0..1 BackboneElement "Körperstruktur" "untersuchte Körperstruktur"
  * Morphologie 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Morphologie" "Morphologie der Körperstruktur"
  * Lokalisation 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Lokalisation" "Lokalisation der Körperstruktur im Bild."
  * naehereLokalisation 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "nähere Lokalisation" "explizite Beschreibung der Lokalisation."
  * Person 1..1 Reference(Patient) "Person" "Person, an der sich die untersuchte Körperstruktur befindet. Hier soll das MII KDS-Modul Person verwendet werden."
* Empfehlung 0..* BackboneElement "Empfehlung" "Therapieempfehlungen aus vorherigen Behandlungen"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Behandlungsempfehlung"
  * ArtEmpfehlung 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Art der Empfehlung" "Beschreibt die Art und Absicht der Empfehlung."
  * FreitextEmpfehlung 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitextempfehlung" "Behandlungsempfehlung in Freitextform."
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich die Empfehlung bezieht. Hier soll das MII KDS-Modul Person verwendet werden."
  * Zusatzinformation 0..* Reference(DiagnosticReport) "Zusatzinformation" "Zusatzinformation für einen Befundbericht."
* SemistrukturiertesBefunddokument 1..1 BackboneElement "Semistrukturiertes Befunddokument" "Abbildung des Befunds über generische Composition."
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status des semistrukturierten Befundberichts."
  * Typ 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Typ" "bestimmte Dokumentenart in LOINC codiert."
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich das Dokument bezieht. Hier sollte das MII KDS-Profil Person referenziert werden."
  * DatumUhrzeit 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum und Uhrzeit der Bearbeitung" ""
  * Autor 1..* Reference(Practitioner) "Autor" "Referenz auf den Autor der Beschreibung."
  * Titel 1..1 http://hl7.org/fhir/StructureDefinition/string "Titel" "Titel des Befunddokuments"
  * Befundabschnitt 1..* BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments. Der erste Abschnitt ist immer ein Befundbericht. Alle weiteren Abschnitte können Freitext oder codierte Beobachtungen sein."
    * Titel 0..1 http://hl7.org/fhir/StructureDefinition/string "Titel" "Titel des Befundabschnitts."
    * Art 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art" "Art des Befundabschnitts."
    * Autor 0..* Reference(Practitioner or Device) "Autor" "Autor des jeweiligen Befundabschnitts. Kann auch von einer KI generiert werden."
    * Text 0..1 http://hl7.org/fhir/StructureDefinition/Narrative "Text" "Textueller Inhalt des Befundabschnitts."
    * Eintrag 1..* Reference(DiagnosticReport or Observation) "Eintrag" "Referenz auf eine Observation, die zum Eintrag des Befundabschnitts gehört."
    * Unterabschnitt 0..* BackboneElement "Unterabschnitt" "Referenz auf einen weiteren Unterabschnitt."
* Befundbericht 1..1 BackboneElement "Befundbericht" "Bericht einer radiologischen Befundung"
  * AnforderndeMassnahme 0..* Reference(ServiceRequest) "Anfordernde Maßnahme" "Basiert auf einer ServiceRequest-Anfrage."
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status des Befundberichts."
  * Kategorie 1..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Kategorie" "Kategorisiert die Untersuchungsart"
  * Code 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Code" "Festgelegter Code des Befundberichts. Hier Radiologischer Befund"
  * Person 1..1 Reference(Patient) "Personen-Identifikation" "Die Person, für die der Befundbericht erstellt wurde. Hier sollte das MII KDS-Modul Person referenziert werden"
  * Fall 0..1 Reference(Encounter) "Fall-Referenz" "Referenz über Fall auf den Versorgungsstellenkontakt. Hier soll das MII KDS-Modul Fall in Stufe 3 referenziert werden"
  * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Klinisch relevanter Zeitpunkt" "Klinisch relevanter Zeitpunkt, auf den sich der Bericht bezieht."
  * Periode 0..1 http://hl7.org/fhir/StructureDefinition/Period "Klinisch relevante Periode" "Klinisch relevante Periode, auf die sich der Bericht bezieht."
  * ZeitpunktErstellung 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt der Erstellung" "Zeitpunkt der Erstellung des Berichts."
  * Beobachtung 0..* Reference(Observation) "Beobachtung" "Referenz auf die generische Beobachtung."
  * Studienbezug 1..* Reference(ImagingStudy) "Studienbezug" "Bezug auf die zugehörige(n) Bildgebungsstudie(n)."
  * InterpretationBeobachtung 0..1 http://hl7.org/fhir/StructureDefinition/markdown "Interpretation" "Freitextinterpretation der Beobachtung."
  * StrukturierteInterpretation 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Strukturierte Interpretation" "Strukturierte Interpretation der Beobachtung."
  * Zusatzinformation 0..1 Reference(DiagnosticReport or Procedure) "Zusatzinformation" "Referenz auf weitere Befundberichte zum Patienten. Backport aus FHIR R5"
  * Dokumentenanhang 0..* http://hl7.org/fhir/StructureDefinition/Attachment "Dokumentenanhang" "Anhang der Dokumente und Bilder."
* Bildgebungsprozedur 0..1 BackboneElement "Bildgebungsprozedur" "Beschreibt eine Bildgebungsprozedur."
  * AnforderndeMassnahme 1..* Reference(ServiceRequest) "Anfordernde Maßnahme" "Anforderung einer Bildgebungsprozedur"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Befundungsprozedur"
  * Kategorie 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Kategorie" "Kategorisiert die Prozedur"
  * Code 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Code" "Definiert einen spezifischen Code für die Prozedur nach LOINC"
  * Person 1..1 Reference(Patient) "Person" "Zu untersuchende Person. Hier soll das MII KDS-Profil Person verwendet werden."
  * Zeitpunkt 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt der Prozedur" "Zeitpunkt an dem die Prozedur durchgeführt wurde."
* Studie 0..* BackboneElement "Studie" "Bildgebungsstudie"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Bildgebungsstudie- Info darüber, ob die Studie gültig, ungültig, zurückgezogen, etc. ist."
  * Modalitaeten 0..* http://hl7.org/fhir/StructureDefinition/Coding "Modalitaeten" "Set/Liste aller verschiedenen Modalitaeten, die in dieser DICOM-Studie enthalten sind."
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich die Bildgebungsstudie bezieht. Hier soll das MII KDS-Modul Person referenziert werden."
  * Fall 0..1 Reference(Encounter) "Fall-Referenz" "Referenz zum dazugehörigen Fall der Bildgebungsstudie. Hier soll das MII KDS-Modul Fall in Stufe 3 referenziert werden."
  * Beginn 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beginn" "Datum und Zeitpunkt, an dem die Studie gestartet wurde (z.B. Zeitpunkt des Beginns der CT-Untersuchung)."
  * AnforderndeMassnahme 0..* Reference(ServiceRequest) "Anfordernde Maßnahme" "Referenz auf die anfordernde Maßnahme dieser Bildgebungsstudie"
  * QuellePACS 0..* Reference(Endpoint) "Quelle zum PACS-Bild" "Referenz auf den Speicherort der Bildgebungsstudie im PACS"
  * AnzahlSerien 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzahl der Serien" "Anzahl der in der Bildgebungsstudie enthaltenen Serien, z.B. 5"
  * AnzahlInstanzen 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzahl der SOP Instanzen" "Anzahl der in der Bildgebungsstudie enthaltenen SOP Instanzen, z.B. 127"
  * Prozedur 0..* Reference(Procedure) "Prozedur" "Referenz auf die dazugehörige medizinische Prozedur der Studie. Hier soll auf das MII KDS-Modul Prozedur referenziert werden."
  * Bildgebungsgrund 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildgebungsgrund" "Grund, aus dem die Prozedur angefordert wurde"
  * Indikation 0..* Reference(Condition or Observation) "Indikation" "Indikation der Bildgebungsstudie, d.h. der Grund, aus dem diese Bildgebung angefertigt wurde."
  * StudienBeschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Studien-Beschreibung" "Beschreibung der Bildgebungsstudie"
  * Serien 0..* BackboneElement "Serien" "Die Serien der DICOM-Studie"
    * SerienUID 1..1 http://hl7.org/fhir/StructureDefinition/id "Serien-UID" "UID der DICOM-Serie"
    * SerienNummer 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Serien-Nummer" "Nummer der jeweiligen DICOM-Serie"
    * Modalitaet 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Modalitaet" "Modalitaet der DICOM-Serie, z.B. 'MR' oder 'CR'"
    * SerienBeschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Serien-Beschreibung" "Beschreibung der jeweiligen Serie"
    * AnzahlInstanzen 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzhal der SOP Instanzen" "Anzahl der in der Serie enthaltenen SOP Instanzen, z.B. 28"
    * Koerperregion 0..1 http://hl7.org/fhir/StructureDefinition/Coding "Körperregion" "Codierte Information über die untersuchte Körperregion der Serie"
    * Koerperseite 0..1 http://hl7.org/fhir/StructureDefinition/Coding "Körperseite/Lateralität" "Information über die Körperseite der untersuchten Körperregion, z.B. linksseitig"
    * Beginn 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beginn" "Datum und Zeitpunkt, an dem die Serie gestartet wurde (z.B. Zeitpunkt des Beginns der jeweiligen Serienaufnahme)."
    * Performer 0..* BackboneElement "Performer der Serie" "Performer der Serie"
      * Funktion 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Funktion des Performers" "Funktion des Performers"
      * Akteur 1..1 Reference(Device) "Geraet" "Genutztes Geraet in der Serie"
    * Kontrastmittelgabe 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Kontrastmittelgabe" "Information darüber, ob bei der Serie Kontrastmittel genutzt wurde oder nicht"
    * Kontrastmitteldetails 0..* Reference(MedicationStatement) "Kontrastmitteldetails" "Details zur Kontrastmittelgabe über das MedicationStatement. Hier soll auf das MII KDS-Modul Medikation referenziert werden"
    * ModalitaetDX 0..1 BackboneElement "Modalitaet DX" "Modalitaet klassisches Röntgen"
      * KVP 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Maximale Röntgenröhrenspannung" "Maximale Röntgenröhrenspannung in kV"
      * Expositionszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Expositionszeit" "Expositionszeit in ms"
      * Exposition 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Exposition" "Exposition in MAs"
      * Roentgenroehrenstrom 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Röntgenröhrenstrom" "Röntgenröhrenstrom in mA"
    * ModalitaetCR 0..1 BackboneElement "Modalitaet CR" "Modalitaet klassisches Röntgen"
      * KVP 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Maximale Röntgenröhrenspannung" "Maximale Röntgenröhrenspannung in kV"
      * Expositionszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Expositionszeit" "Expositionszeit in ms"
      * Exposition 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Exposition" "Exposition in MAs"
      * Roentgenroehrenstrom 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Röntgenröhrenstrom" "Röntgenröhrenstrom in mA"
    * ModalitaetMG 0..1 BackboneElement "Modalitaet MG" "Modalitaet Mammographie"
      * KVP 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Maximale Röntgenröhrenspannung" "Maximale Röntgenröhrenspannung in kV"
      * Expositionszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Expositionszeit" "Expositionszeit in ms"
      * Exposition 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Exposition" "Exposition in MAs"
      * Roentgenroehrenstrom 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Röntgenröhrenstrom" "Röntgenröhrenstrom in mA"
    * ModalitaetCT 0..1 BackboneElement "Modalitaet CT" "Modalitaet Computertomographie"
      * CTDIVolume 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "CTDIvolume" "CTDIvolume in mGy"
      * KVP 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Maximale Röntgenröhrenspannung" "Maximale Röntgenröhrenspannung in kV"
      * Expositionszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Expositionszeit" "Expositionszeit in ms"
      * Exposition 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Exposition" "Exposition in MAs"
      * Roentgenroehrenstrom 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Röntgenröhrenstrom" "Röntgenröhrenstrom in mA"
    * ModalitaetMR 0..1 BackboneElement "Modalitaet MR" "Modalitaet Kernspintomographie"
      * ScanningSequenz 0..* http://hl7.org/fhir/StructureDefinition/string "Scanning Sequenz" "Code der aktuellen Scanning Sequenz"
      * ScanningSequenzUntervariante 0..1 http://hl7.org/fhir/StructureDefinition/string "Scanning Sequenz Untervariante" "Code der aktuellen Scanning Sequenz Untervariante"
      * MagnetischeFeldstaerke 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Magnetische Feldstärke" "Magnetische Feldstärke des Kernspins in T"
    * ModalitaetPT 0..1 BackboneElement "Modalitaet PT" "Modalitaet PET-Scan"
      * Radiopharmakon 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Radiopharmakon" "Genutztes Radiopharmakon"
      * Applikationsstartzeit 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Applikationsstartzeit" "Zeit des Beginn der Applikation des Radiopharmakons"
      * Reskaliserungstyp 0..1 http://hl7.org/fhir/StructureDefinition/string "Reskalierungstyp" "Abkürzung des Reskalierungstypen"
      * GesamteRadionukliddosis 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Gesamte Radionukliddosis" "Gesamte verabreichte Radionukliddosis in MBq"
      * Halbwertszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Halbwertszeit" "Halbwertszeit des Radionuklids in s"
    * ModalitaetNM 0..1 BackboneElement "Modalitaet NM" "Modalitaet Nuklearmedizin"
      * Radiopharmakon 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Radiopharmakon" "Genutztes Radiopharmakon"
      * Applikationsstartzeit 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Applikationsstartzeit" "Zeit des Beginn der Applikation des Radiopharmakons"
      * Reskaliserungstyp 0..1 http://hl7.org/fhir/StructureDefinition/string "Reskalierungstyp" "Abkürzung des Reskalierungstypen"
      * GesamteRadionukliddosis 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Gesamte Radionukliddosis" "Gesamte verabreichte Radionukliddosis in MBq"
      * Halbwertszeit 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Halbwertszeit" "Halbwertszeit des Radionuklids in s"
    * Instanzen 0..* BackboneElement "Instanzen" "Alle Instanzen dieser DICOM-Serie."
      * SOPInstanz 1..1 http://hl7.org/fhir/StructureDefinition/id "SOP-Instanz UID" "UID der jeweiligen SOP-Instanz"
      * SOPKlasse 1..1 http://hl7.org/fhir/StructureDefinition/Coding "SOP-Klasse" "SOP-Klasse der jeweiligen SOP-Instanz"
      * InstanzNummer 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Instanz-Nummer" "Nummer der jeweiligen Instanz"
      * Titel 0..1 http://hl7.org/fhir/StructureDefinition/string "Titel des Bilds" ""
      * Bildtyp 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildtyp" "Bildtyp der Instanz"
      * Schichtdicke 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Schichtdicke in mm" "Schichtdicke der SOP-Instanz in mm"
      * PixelabstandX 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Pixelabstand in x-Richtung in mm" "Pixelabstand in x-Richtung in mm"
      * PixelabstandY 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Pixelabstand in y-Richtung in mm" "Pixelabstand in y-Richtung in mm"
* GenerischeBeobachtung 0..* BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments."
  * Bildnummer 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildnummer" "DICOM Series UID der zugehörigen Serie."
  * Schichtposition 0..1 http://hl7.org/fhir/StructureDefinition/string "Schichtposition" "DICOM Instance UID der zugehörigen SOP Instance."
  * ErweiterteKoerperstruktur 0..1 Reference(BodyStructure) "Erweiterte Körperstruktur" "Backport der R5 Referenz auf das BodyStructure-Profil."
  * TeilEinerBefundungsprozedur 0..* Reference(Procedure) "Teil einer Befundungsprozedur" "Hier soll auf das MII KDS-Modul Prozedur referenziert werden"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Beobachtung."
  * Beobachtungsklassifizierung 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Beobachtungsklassifizierung" "Klassifiziert eine Beobachtung"
  * Beobachtungstyp 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Beobachtungstyp" "Typ der Beobachtung."
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich die Beobachtung bezieht. Hier soll das MII KDS-Modul Person verwendet werden."
  * Beobachtungszeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beobachtungszeitpunkt" "Zeitpunkt an dem die Beobachtung gemacht wird."
  * Beschreibung 0..1 BackboneElement "Beschreibung" "Detaillierte Beschreibung der Beobachtung mit value[x]."
  * Koerperregion 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Körperregion" "Codierte Körperregion der Beobachtung"
  * WeitereBeobachtung 0..* Reference(Observation) "Weitere Beobachtung(en)" "Weitere Beobachtung(en) als Referenz auf weitere Observation(s)."
  * Studienbezug 0..* Reference(ImagingStudy) "Studienbezug" "Bezug auf die zugehörige(n) Bildgebungsstudie(n)."
  * ErweiterteBeschreibung 0..* BackboneElement "Erweiterte Beschreibung" "Kann mehrere Beschreibungen strukturiert abbilden."
* Kontrastmittelgabe 0..1 BackboneElement "Kontrastmittelgabe" "Erfassung der Kontrastmittelgabe aus dem RIS"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Kontrastmittelgabe"
  * Medikament 1..1 BackboneElement "Medikament" "Beschreibung des verwendeten Medikament"
  * Person 1..1 Reference(Patient) "Person" "Person der das Medikament verabreicht wird. Hier soll das MII KDS-Modul Person verwendet werden."
  * Medikationsdauer 1..1 http://hl7.org/fhir/StructureDefinition/Period "Medikationsdauer" "Dauer über die das Medikament verabreicht worden ist."
  * Dosierung 0..1 BackboneElement "Dosierung" "Dosierung der Medikation"
    * Dosis 1..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Dosis" "Dosis des Medikaments"
* Befundungsprozedur 0..1 BackboneElement "Befundungsprozedur" ""
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Befundungsprozedur"
  * Kategorie 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Kategorie" "Kategoriesierung der Befundungsprozedur"
  * Code 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code" "Code"
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich die Befundungsprozedur bezieht. Hier soll das MII KDS-Profil Person verwendet werden."
  * Befundungszeit 1..1 BackboneElement "Befundungszeit" ""
  * Bericht 1..* Reference(DiagnosticReport or Composition or DocumentReference) "Bericht" "Referenz auf den Bericht"
* Anforderung 0..1 BackboneElement "Anforderung" "Anfoderung der jeweiligen Bildgebungsmaßnahme"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Anforderung"
  * Anforderungsabsicht 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Anforderungsabsicht" "Absicht in der die Anforderung gestellt worden ist."
  * Anforderungsklassifizierung 1..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Klassifizierung" "Klassifizierung der Anfrage"
  * ArtAnfrage 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anfrage" "Art der Anfrage"
  * Person 1..1 Reference(Patient) "Person" "Bezug zur Person, für den die Anfoderung besteht. Hier soll auf das MII KDS-Modul Person referenziert werden."
  * Versorgungsstellenkontakt 0..1 Reference(Encounter) "Versorgungsstellenkontakt" "Kontakt einer Versorgungsstelle. Hier soll das MII KDS-Modul Fall verwendet werden"
  * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt" "Zeitpunkt, zu der die Anforderung authorisiert wurde."
  * Anforderer 0..1 Reference(Practitioner) "Anforderer" "Person, die die Anforderung stellt."
  * Anforderungsgrund 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Anforderungsgrund" "Anforderungsgrund"
  * Anforderungsbezug 0..* Reference(Condition) "Anforderungsbezug" "Anforderungsbezug"
  * Zusatzinformation 0..* Reference(DiagnosticReport) "Zusatzinformation" "Zusatzinformation zur jeweiligen Anfoderung"

//Mapping Profiles
Mapping: Bildgebung-LogicalModel
Id: FHIR
Title: "Bildgebung LogicalModel FHIR Mapping"
Source: MII_LM_Bildgebung
* Koerperstruktur -> "BodyStructure"
  * Morphologie -> "BodyStructure.morphology"
  * Lokalisation -> "BodyStructure.location"
  * naehereLokalisation -> "BodyStructure.locationQualifier"
  * Person -> "BodyStructure.patient"
* Empfehlung -> "CarePlan"
  * Status -> "CarePlan.status"
  * ArtEmpfehlung -> "CarePlan.intent"
  * FreitextEmpfehlung -> "CarePlan.description"
  * Person -> "CarePlan.subject"
  * Zusatzinformation -> "CarePlan.supportingInfo"
* SemistrukturiertesBefunddokument -> "Composition"
  * Status -> "Composition.status"
  * Typ -> "Composition.type"
  * Person -> "Composition.subject"
  * DatumUhrzeit -> "Composition.date"
  * Autor -> "Composition.author"
  * Titel -> "Composition.title"
  * Befundabschnitt -> "Composition.section"
    * Titel -> "Composition.section.title"
    * Art -> "Composition.section.code"
    * Autor -> "Composition.section.author"
    * Text -> "Composition.section.text"
    * Eintrag -> "Composition.section.entry"
    * Unterabschnitt -> "Composition.section.section"
* Befundbericht -> "DiagnosticReport"
  * AnforderndeMassnahme -> "DiagnosticReport.basedOn"
  * Status -> "DiagnosticReport.status"
  * Kategorie -> "DiagnosticReport.category"
  * Code -> "DiagnosticReport.code"
  * Person -> "DiagnosticReport.subject"
  * Fall -> "DiagnosticReport.encounter"
  * Zeitpunkt -> "DiagnosticReport.effectiveDateTime"
  * Periode -> "DiagnosticReport.effectivePeriod"
  * ZeitpunktErstellung -> "DiagnosticReport.issued"
  * Beobachtung -> "DiagnosticReport.result"
  * Studienbezug -> "DiagnosticReport.study"
  * InterpretationBeobachtung -> "DiagnosticReport.conclusion"
  * StrukturierteInterpretation -> "DiagnosticReport.conclusionCode"
  * Zusatzinformation -> "DiagnosticReport.supportingInfo.reference"
  * Dokumentenanhang -> "DiagnosticReport.presentedForm"
* Bildgebungsprozedur -> "Procedure"
  * AnforderndeMassnahme -> "Procedure.basedOn"
  * Status -> "Procedure.status"
  * Kategorie -> "Procedure.category"
  * Code -> "Procedure.code"
  * Person -> "Procedure.subject"
  * Zeitpunkt -> "Procedure.performed[x]"
* Studie -> "ImagingStudy"
  * Status -> "ImagingStudy.status"
  * Modalitaeten -> "ImagingStudy.modality"
  * Person -> "ImagingStudy.subject"
  * Fall -> "ImagingStudy.encounter"
  * Beginn -> "ImagingStudy.started"
  * AnforderndeMassnahme -> "ImagingStudy.basedOn"
  * QuellePACS -> "ImagingStudy.endpoint"
  * AnzahlSerien -> "ImagingStudy.numberOfSeries"
  * AnzahlInstanzen -> "ImagingStudy.numberOfInstances"
  * Prozedur -> "ImagingStudy.procedureReference"
  * Indikation -> "ImagingStudy.reasonReference"
  * StudienBeschreibung -> "ImagingStudy.description"
  * Bildgebungsgrund -> "ImagingStudy.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund)"
  * Serien -> "ImagingStudy.series"
    * SerienUID -> "ImagingStudy.series.uid"
    * SerienNummer -> "ImagingStudy.series.number"
    * Modalitaet -> "ImagingStudy.series.modality"
    * SerienBeschreibung -> "ImagingStudy.series.description"
    * AnzahlInstanzen -> "ImagingStudy.series.numberOfInstances"
    * Koerperregion -> "ImagingStudy.series.bodySite"
    * Koerperseite -> "ImagingStudy.series.laterality"
    * Beginn -> "ImagingStudy.series.started"
    * Performer -> "ImagingStudy.series.performer"
      * Funktion -> "ImagingStudy.series.performer.function"
      * Akteur -> "ImagingStudy.series.performer.actor"
    * Kontrastmittelgabe -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel)"
    * Kontrastmitteldetails -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel)"
    * ModalitaetDX -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * KVP -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Expositionszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Exposition -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Roentgenroehrenstrom -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
    * ModalitaetCR -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * KVP -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Expositionszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Exposition -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Roentgenroehrenstrom -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
    * ModalitaetMG -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * KVP -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Expositionszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Exposition -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
      * Roentgenroehrenstrom -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx)"
    * ModalitaetCT -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
      * KVP -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
      * Expositionszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
      * Exposition -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
      * Roentgenroehrenstrom -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
      * CTDIVolume -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct)"
    * ModalitaetMR -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr)"
      * ScanningSequenz -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr)"
      * ScanningSequenzUntervariante -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr)"
      * MagnetischeFeldstaerke -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr)"
    * ModalitaetNM -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-nm)"
      * Radiopharmakon -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Applikationsstartzeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Reskaliserungstyp -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * GesamteRadionukliddosis -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Halbwertszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
    * ModalitaetPT -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt)"
      * Radiopharmakon -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Applikationsstartzeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Reskaliserungstyp -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * GesamteRadionukliddosis -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
      * Halbwertszeit -> "ImagingStudy.series.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm)"
    * Instanzen -> "ImagingStudy.series.instance"
      * SOPInstanz -> "ImagingStudy.series.instance.uid"
      * SOPKlasse -> "ImagingStudy.series.instance.sopClass"
      * InstanzNummer -> "ImagingStudy.series.instance.number"
      * Titel -> "ImagingStudy.series.instance.title"
      * Bildtyp -> "ImagingStudy.series.instance.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details)"
      * Schichtdicke -> "ImagingStudy.series.instance.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details)"
      * PixelabstandX -> "ImagingStudy.series.instance.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details)"
      * PixelabstandY -> "ImagingStudy.series.instance.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details)"
* GenerischeBeobachtung -> "Observation"
  * Bildnummer -> "Observation.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-uid)"
  * Schichtposition -> "Observation.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid)"
  * ErweiterteKoerperstruktur -> "Observation.extension(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-observation-imaging)" //Backport
  * TeilEinerBefundungsprozedur -> "Observation.partOf"
  * Status -> "Observation.staus"
  * Beobachtungsklassifizierung -> "Observation.category"
  * Beobachtungstyp -> "Observation.code"
  * Person -> "Observation.subject"
  * Beobachtungszeitpunkt -> "Observation.issued"
  * Beschreibung -> "Observation.value[x]"
  * Koerperregion -> "Observation.bodySite"
  * WeitereBeobachtung -> "Observation.hasMember"
  * Studienbezug -> "Obervation.derivedFrom"
  * ErweiterteBeschreibung -> "Observation.component"
* Kontrastmittelgabe -> "MedicationAdministration"
  * Status -> "MedicationAdministration.status"
  * Medikament -> "MedicationAdministration.medication[x]"
  * Person -> "MedicationAdministration.subject"
  * Medikationsdauer -> "MedicationAdministration.effective[x]"
  * Dosierung -> "MedicationAdministration.dosage"
    * Dosis -> "MedicatinAdministration.dosage.dose"
* Befundungsprozedur -> "Procedure"
  * Status -> "Procedure.status"
  * Kategorie -> "Procedure.category"
  * Person -> "Procedure.subject"
  * Befundungszeit -> "Procedure.peformed[x]"
  * Bericht -> "Procedure.report"
* Anforderung -> "ServiceRequest"
  * Status -> "ServiceRequest.status"
  * Anforderungsabsicht -> "ServiceRequest.intent"
  * Anforderungsklassifizierung -> "ServiceRequest.category"
  * ArtAnfrage -> "ServiceRequest.code"
  * Person -> "ServiceRequest.subject"
  * Versorgungsstellenkontakt -> "ServiceRequest.encounter"
  * Zeitpunkt -> "ServiceRequest.authoredOn"
  * Anforderer -> "ServiceRequest.requester"
  * Anforderungsgrund -> "ServiceRequest.reasonCode"
  * Anforderungsbezug -> "ServiceRequest.reasonReference"
  * Zusatzinformation -> "ServiceRequest.supportingInfo"

//Mapping KDS
Mapping: Bildgebung-LogicalModel-Profile
Id: KDS-Profile
Title: "Bildgebung LogicalModel KDS-Profile Mapping"
Source: MII_LM_Bildgebung
* Koerperstruktur -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
* Empfehlung -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
* SemistrukturiertesBefunddokument -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* Befundbericht -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
* Bildgebungsprozedur -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
* Studie -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* GenerischeBeobachtung -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* Kontrastmittelgabe -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
* Befundungsprozedur -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
* Anforderung -> "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
