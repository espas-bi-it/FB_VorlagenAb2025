# 📘 Projekt-Journal

## ℹ️ Info

Das Projektjournal soll Statusberichte von Ihrer Umsetzung enthalten. Anhand vom Projektjournal soll sichtbar werden, mit was Sie sich bisher beschäftigt haben und was der aktuelle Stand des Projektes ist. Es gibt keine starre Struktur – dokumentieren, was wichtig erscheint.

**Seien Sie so ausführlich wie nötig.**

---
## Inhaltsverzeichnis
- [📘 Projekt-Journal](#-projekt-journal)
  - [ℹ️ Info](#ℹ️-info)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Tagesaktivitäten](#tagesaktivitäten)
  - [🧩 Phase 1](#-phase-1)
  - [🧱 Phase 2](#-phase-2)
    - [📂 Verwendete Datenstruktur](#-verwendete-datenstruktur)
    - [🔷 UML Klassendiagramm](#-uml-klassendiagramm)
    - [🖼️ Layout](#️-layout)
    - [✅ Validierung](#-validierung)
  - [🚀 Phase 3](#-phase-3)
  - [⚙️ Phase 4](#️-phase-4)
  - [🔒 Phase 5](#-phase-5)
  - [🎯 Phase 6](#-phase-6)
  - [📸 Screenshots vom Fortschritt](#-screenshots-vom-fortschritt)
  - [⚠️ Herausforderungen \& Blockaden](#️-herausforderungen--blockaden)
    - [🎨 Layout \& Schriftart anpassen](#-layout--schriftart-anpassen)
    - [💾 Laden \& Schreiben der Daten](#-laden--schreiben-der-daten)
  - [💻 Besonders erwähnenswerte Code-Beispiele](#-besonders-erwähnenswerte-code-beispiele)
  - [Reflexion](#reflexion)
  

---

## Tagesaktivitäten
|Datum|Aktivität|
|---------|---------|
| Mo, 07.07.2025 | Projektstart, Hello World erstellt. Android Emulator läuft noch nicht.|
| Di, 08.07.2025 | Android Emulator läuft .  GitHub Refresher|
| Mi, 09.07.2025 | Datenstruktur erstellt, JSON-Datei angelegt.|
|Mo, 14.07.2025| 'go' geholt für Phase 2|

---

## 🧩 Phase 1
7.7.2025

**Was habe ich in Phase 1 umgesetzt:**

Hello World wurde erstellt und zum Laufen gebracht:

![Hello World Screenshot](https://placehold.co/60x10)

---

## 🧱 Phase 2
14.07.2025

**Was habe ich in Phase 2 umgesetzt:**

### 📂 Verwendete Datenstruktur

```json
[
  {
    "Id": 1,
    "Name": "Anna Müller",
    "Email": "anna.mueller@example.com",
    "RegistriertAm": "2024-12-10T14:23:00"
  }
]
```

Die Datenstruktur wird in folgender C# Klasse (Model) abgebildet.

```csharp
    public class Benutzer
{
    public int Id { get; set; }
}
```

![Datenstruktur Screenshot](https://placehold.co/60x10)

---

### 🔷 UML Klassendiagramm

![UML Diagramm](https://placehold.co/60x20)

### 🖼️ Layout

Ich habe mich für folgendes Layout entschieden

Page 1: Overview

![Page 1 Overview](https://placehold.co/60x30)

Page 2: DetailView

![Page 2 Overview](https://placehold.co/60x40)

FormView

![FormularView](https://placehold.co/60x50)

---

### ✅ Validierung

Folgende Felder müssen validiert werden:

| Feld          | Screenshot                               |
| ------------- | ---------------------------------------- |
| feedback_text | Erlaubt sind nur alphanumerische Zeichen |

## 🚀 Phase 3

28.07.2025

**Was habe ich in Phase 3 umgesetzt:**

- Benutzerformular erstellt
- Validierung eingebaut
- Speicherung der Eingaben funktioniert

![Formular Screenshot](https://placehold.co/60x40)

---

## ⚙️ Phase 4

30.07.2025

**Was habe ich in Phase 4 umgesetzt:**

- Design-Anpassung mit CSS
- Schriftart auf „Roboto“ geändert
- Layout responsive gemacht

![Layout Screenshot](https://placehold.co/60x40)

---

## 🔒 Phase 5

04.08.2025

**Was habe ich in Phase 5 umgesetzt:**

- Datenbankanbindung (Testlauf)
- Lesen/Schreiben von Nutzerdaten

![Datenbank Screenshot](https://placehold.co/60x40)

---

## 🎯 Phase 6

11.08.2025

**Was habe ich in Phase 6 umgesetzt:**

- Login-Funktion realisiert
- User-Session über Cookies

![Login Screenshot](https://placehold.co/60x40)

---

## 📸 Screenshots vom Fortschritt

| Datum         | Feature         | Screenshot                        |
| --------------- | --------------- | --------------------------------- |
| 1.1.2025         | Startseite      | ![](https://placehold.co/60x40) |
| 2.1.2025         | Eingabeformular | ![](https://placehold.co/60x40) |
| 3.1.2025         | Benutzerliste   | ![](https://placehold.co/60x40) |

---

## ⚠️ Herausforderungen & Blockaden

### 🎨 Layout & Schriftart anpassen

- Problem: Schriftarten wurden nicht korrekt geladen
- Lösung: Google Fonts manuell eingebunden

```csharp
public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        ...
    }
}
```

```xml
<Label Text="Willkommen im Projekt!"
       FontFamily="RobotoRegular"
       FontSize="20"
       HorizontalOptions="Center" />
```

### 💾 Laden & Schreiben der Daten

- Problem: JSON-Datei nicht gefunden (Pfadproblem)
- Lösung: Relativen Pfad anpassen und Debug nutzen

```csharp
```


## 💻 Besonders erwähnenswerte Code-Beispiele

Validierung mit Benutzerfeedback

```csharp
```

Laden von Benutzerdaten

```csharp
var json = File.ReadAllText("daten/benutzer.json");
var benutzer = JsonSerializer.Deserialize<List<Benutzer>>(json);
```

## Reflexion
Der Fachblock war sehr anspruchsvoll, hat mir jedoch viele Erkenntnisse gebracht. Ich habe gelernt, dass ..
Es war schwierig, Termine einzuhalten, weil ...  Trotzdem denke ich, dass ..
