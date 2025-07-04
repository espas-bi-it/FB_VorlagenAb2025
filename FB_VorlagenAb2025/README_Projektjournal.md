# 📘 Projekt-Journal

## ℹ️ Info

Das Projektjournal soll Statusberichte von Ihrer Umsetzung enthalten. Anhand vom Projektjournal soll sichtbar werden, mit was Sie sich bisher beschäftigt haben und was der aktuelle Stand des Projektes ist. Es gibt keine starre Struktur – dokumentieren, was wichtig erscheint.

**Seien Sie so ausführlich wie nötig.**

---
## Inhaltsverzeichnis
- [📘 Projekt-Journal](#-projekt-journal)
  - [ℹ️ Info](#-info)
  - [Tagesaktivitäten](#tagesaktivitäten)
  - [🧩 Phase 1](#-phase-1)
  - [🧱 Phase 2](#-phase-2)
    - [📂 Verwendete Datenstruktur](#-verwendete-datenstruktur)
    - [🔷 UML Klassendiagramm](#-uml-klassendiagramm)
    - [🖼️ Layout](#-layout)
    - [✅ Validierung](#-validierung)
  - [🚀 Phase 3](#-phase-3)
  - [⚙️ Phase 4](#-phase-4)
  - [🔒 Phase 5](#-phase-5)
  - [🎯 Phase 6](#-phase-6)
  - [📸 Screenshots vom Fortschritt](#-screenshots-vom-fortschritt)
  - [⚠️ Herausforderungen & Blockaden](#-herausforderungen--blockaden)
    - [🎨 Layout & Schriftart anpassen](#-layout--schriftart-anpassen)
    - [💾 Laden & Schreiben der Daten](#-laden--schreiben-der-daten)
  - [💻 Besonders erwähnenswerte Code-Beispiele](#-besonders-erwähnenswerte-code-beispiele)
  

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

![Hello World Screenshot](https://placehold.co/600x400)

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
  },
  {
    "Id": 2,
    "Name": "Jonas Meier",
    "Email": "jonas.meier@example.com",
    "RegistriertAm": "2025-01-05T10:15:00"
  },
  {
    "Id": 3,
    "Name": "Sophie Keller",
    "Email": "sophie.keller@example.com",
    "RegistriertAm": "2025-03-18T08:47:00"
  }
]
```

Die Datenstruktur wird in folgender C# Klasse (Model) abgebildet.

```csharp
    public class Benutzer
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public DateTime RegistriertAm { get; set; }
}
```

![Datenstruktur Screenshot](https://placehold.co/600x400)

---

### 🔷 UML Klassendiagramm

![UML Diagramm](https://placehold.co/600x400)

### 🖼️ Layout

Ich habe mich für folgendes Layout entschieden

Page 1: Overview

![Page 1 Overview](https://placehold.co/600x400)

Page 2: DetailView

![Page 2 Overview](https://placehold.co/600x400)

FormView

![FormularView](https://placehold.co/600x400)

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

![Formular Screenshot](https://placehold.co/600x400)

---

## ⚙️ Phase 4

30.07.2025

**Was habe ich in Phase 4 umgesetzt:**

- Design-Anpassung mit CSS
- Schriftart auf „Roboto“ geändert
- Layout responsive gemacht

![Layout Screenshot](https://placehold.co/600x400)

---

## 🔒 Phase 5

04.08.2025

**Was habe ich in Phase 5 umgesetzt:**

- Datenbankanbindung (Testlauf)
- Lesen/Schreiben von Nutzerdaten

![Datenbank Screenshot](https://placehold.co/600x400)

---

## 🎯 Phase 6

11.08.2025

**Was habe ich in Phase 6 umgesetzt:**

- Login-Funktion realisiert
- User-Session über Cookies

![Login Screenshot](https://placehold.co/600x400)

---

## 📸 Screenshots vom Fortschritt

| Datum         | Feature         | Screenshot                        |
| --------------- | --------------- | --------------------------------- |
| 1.1.2025         | Startseite      | ![](https://placehold.co/600x400) |
| 2.1.2025         | Eingabeformular | ![](https://placehold.co/600x400) |
| 3.1.2025         | Benutzerliste   | ![](https://placehold.co/600x400) |

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

        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("Roboto-Regular.ttf", "RobotoRegular");
                // fonts.AddFont("Roboto-Bold.ttf", "RobotoBold"); // optional
            });

        return builder.Build();
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
using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

public class Benutzer
{
    public string Name { get; set; }
    public int Alter { get; set; }
}

public class DatenService
{
    // Relativer Pfad zur JSON-Datei (Ordner "daten" im Projektverzeichnis)
    private const string Dateiname = "daten/benutzer.json";

    public static List<Benutzer> Laden()
    {
        string pfad = Path.Combine(AppContext.BaseDirectory, Dateiname);

        // Debug-Ausgabe des Pfads
        Console.WriteLine($"[Debug] Lese von: {pfad}");

        if (!File.Exists(pfad))
        {
            Console.WriteLine($"[Fehler] JSON-Datei nicht gefunden: {pfad}");
            return new List<Benutzer>();
        }

        try
        {
            string json = File.ReadAllText(pfad);
            return JsonSerializer.Deserialize<List<Benutzer>>(json) ?? new List<Benutzer>();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Fehler beim Lesen] {ex.Message}");
            return new List<Benutzer>();
        }
    }

    public static void Speichern(List<Benutzer> daten)
    {
        string pfad = Path.Combine(AppContext.BaseDirectory, Dateiname);

        try
        {
            // Ordner sicherstellen
            Directory.CreateDirectory(Path.GetDirectoryName(pfad)!);

            string json = JsonSerializer.Serialize(daten, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(pfad, json);
            Console.WriteLine("[Info] Daten erfolgreich gespeichert.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Fehler beim Speichern] {ex.Message}");
        }
    }
}
```

Beispielnutzung

```csharp
var benutzerListe = DatenService.Laden();

benutzerListe.Add(new Benutzer { Name = "Lisa", Alter = 29 });

DatenService.Speichern(benutzerListe);
```

## 💻 Besonders erwähnenswerte Code-Beispiele

Validierung mit Benutzerfeedback

```csharp
public string PrüfeBenutzerEingabe(string name, string email)
{
    if (string.IsNullOrWhiteSpace(name))
        return "Name darf nicht leer sein.";

    if (!email.Contains("@") || !email.Contains("."))
        return "Bitte eine gültige E-Mail-Adresse eingeben.";

    return string.Empty; // Eingabe gültig
}
```

Laden von Benutzerdaten

```csharp
var json = File.ReadAllText("daten/benutzer.json");
var benutzer = JsonSerializer.Deserialize<List<Benutzer>>(json);
```

