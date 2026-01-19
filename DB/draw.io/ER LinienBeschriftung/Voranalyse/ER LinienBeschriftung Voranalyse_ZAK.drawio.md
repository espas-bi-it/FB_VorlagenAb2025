# Text label glues on connector

Leider ist in draw.io pro Verbindungslinie (= Linie) nur **ein Label** vorgesehen.  
Dieses laesst sich entlang der Linie verschieben.

Das zweite Start- oder Endlabel koennte z. B. durch einen **unsichtbaren kleinen Kreis (Ellipse)** erzeugt werden.  
**Gruppieren** waere auch moeglich.

Am besten sind **Text-Labels, welche relativ zur Linie positioniert sind**.  
Ueber die UI ist dies bisher **nicht moeglich**, aber ueber **Manipulation direkt an der XML-Struktur**.  
Darum hier eine Vorlage, aus der man eine solche Linie in sein eigenes Projekt kopieren kann.

---

## Eine Analyse zur XML-Struktur

Die **Verbindungslinie** mit  
`id="rel1"`  
ist vom Typ  
`style="endArrow=none;startArrow=none"`.

Sie hat einen Bezeichner  
`value="Beziehung"`  
und klebt an den Shapes mit den Punkten:

- `source="entA"`
- `target="entB"`

---

### Gebundene Textlabels

Die drei Textlabels sind an die **Verbindungslinie** gebunden:

- `parent="rel1"`
- relativ zur Linie: `relative="1"`

Mit einem prozentualen Abstand:

- **12 %** → `x="0.12"`
- **50 %** → `x="0.5"`
- **88 %** → `x="0.88"`

---

### Wichtige Hinweise

- Die Geometry (`x` und `y`) wird **vom Mittelpunkt der Verbindungslinie** aus gemessen  
  (Koordinaten duerfen auch negativ sein)
- **ID muss pro Element eindeutig sein**, sonst wird beim Oeffnen der Datei ein Fehler ausgegeben
- Langer oder kurzer Text wird **mittig an den Koordinaten ausgerichtet**
