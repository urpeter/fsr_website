## Allgemeines
LaTeX ist ein Softwarepaket für den Textsatz. Es erfreut sich besonders in (natur-)wissenschaftlichen Kreisen großer Beliebtheit und bildet den de facto-Standard vieler Publikationen. Im Gegensatz zu Programmen wie Microsoft Word oder LibreOffice handelt es sich bei LaTeX nicht um ein WYSIWYG ("What you see is what you get")-System, bei dem das Dokument während der Bearbeitung in einer Form dargestellt wird, die dem Endprodukt stark ähnelt. Stattdessen **schreibt man LaTeX-Dokumente in einer eigenen Sprache (ähnlich einer Programmiersprache), die erst am Ende in das eigentliche Dokumentenformat (in der Praxis meist PDF) umgewandelt wird.** Als Folge ist die Dokumentenerstellung "unintuitiver", bietet aber auch entscheidende Vorteile, was beispielsweise Features wie Mikrotypographie angeht.

## <font color="#F00000">Bevor du loslegst:</font>

Um mit LaTeX arbeiten zu können, müssen einige Voraussetzungen erfüllt sein. Lies dir bitte dieses [Tutorial](latex_tut.html) durch, falls du noch nicht weißt, wie du LaTeX benutzen bzw. zum Laufen bringst.

<div class="panel panel-danger">
  <div class="panel-heading">
    <h3 class="panel-title">Ganz wichtig</h3>
  </div>
  <div class="panel-body">
    Für das Propädeutikum am Anfang des Wintersemesters muss dein Laptop oder dein CoLi-Account soweit konfiguriert sein, dass du sofort loslegen kannst. Wir werden uns während des Propädeutikums nicht damit beschäftigen, LaTeX bei dir zum Laufen zu bringen, da die Zeit knapp bemessen ist.  
<font color="#F00000">Deshalb: Solltest du Probleme bei der Einrichtung haben, lass es uns vorher wissen und wir finden gemeinsam eine Lösung. Ansonsten musst du dich während der Einführung auf's Zuschauen beschränken. </font>
  </div>
</div>


## Aufbau einer `.tex`-Datei
Eine `.tex`-Datei besteht normalerweise aus zwei Teilen: Der sogenannten **Präambel**, in der allgemeine Eigenschaften des Dokuments festlegt sowie benötigte Pakete (s.u.) eingebunden werden, sowie dem **Hauptteil**, der den eigentlichen Inhalt des Dokuments enthält. In beiden Teilen finden sich **Befehle**, die Formaspekte des Dokuments steuern. Diese werden stets durch einen Backslash (`\`) eingeleitet.

Die Präambel beginnt mit dem `\documentclass`-Befehl, der festlegt, um welche Art von Dokument es sich bei der Datei handelt. Mögliche Dokumentenklassen sind beispielsweise `article`, `report` oder `book`. Darauf folgen im Allgemeinen mehrere `\usepackage-Befehle`, mit denen zusätzliche benötigte Funktionalität zur Verfügung gestelltwird. Dies funktioniert über sogenannte Pakete (packages), die die gewünschten Features vordefinieren und einem dadurch lästige Low-Level-Arbeit ersparen. So gibt es beispielsweise Pakete für chemische Formeln, IPA-Symbole oder auch Zeichnungen.Der Hauptteil des Dokuments ist schließlich von den Befehlen `\begin{document}` und `\end{document}` eingerahmt. Dazwischen befinden sich alle Inhalte, die sich im fertigen Dokument wiederfinden sollen (Text, Tabellen, Grafiken etc.). In der Praxis unterscheiden sich die meisten `.tex`-Dateien, die man erstellt, eher im Hauptteil und kaum in der Präambel. Daher kann es hilfreich sein, sich eine Muster-Vorlage zu erstellen, d.h. eine einfache, leere `.tex`-Datei mit vollständiger Präambel und essentiellen Paket-Einbindungen. Diese kann dann als Grundstock für alle weiteren Dokumente dienen und einem so überflüssige Arbeit ersparen. 

## Pakete
Es gibt unzählige LaTeX-Pakete für alle möglichen Anwendungsgebiete. An dieser Stelle seien nur einige wichtige Pakete
erwähnt.

### Pakete, die grundsätzlich zu empfehlen sind:

 - `\usepackage[utf8]{inputenc}` - Aktiviert UTF-8-Support (hilfreich für Dokumente mit Umlauten und/oder Sonderzeichen)
 - `\usepackage[T1]{fontenc}` - Sorgt u.a. für korrekte Darstellung von Umlauten in erzeugten Dokumenten
 - `\usepackage{microtype}` - Aktiviert erweiterte Mikrotypographie-Features, die das Aussehen des Dokuments verbessern können

### Pakete, die für bestimmte Verwendungszwecke zu empfehlen sind:

 - `\usepackage[ngerman]{babel}` - Richtige Silbentrennung gemäß der neuen deutschen Rechschreibung (bei Dokumenten in deutscher Sprache)
 - `\usepackage{lmodern}` - Bessere Darstellung diakritischer Zeichen
 - `\usepackage{amsmath}` - Verbesserte mathematische Formeln
 - `\usepackage{geometry}` - Zum einfachen Festlegen von Seitenrändern u.ä. (siehe Dokumentation)
 - `\usepackage{booktabs}` - Für schönere Tabellen
 - `\usepackage{tipa}` - IPA-Symbole



## Teildokumente einbinden
Manchmal kann es hilfreich sein, eine Datei in mehrere Teile aufzuspalten, z.B. wenn man mit mehreren Leuten an
einem Dokument arbeitet oder ein sehr großes Dokument erstellen will. Hier bietet sich der `\input`-Befehl an.
Mit ihm kann der Inhalt einer anderen `.tex`-Datei an einer beliebigen Stelle im Dokument eingefügt werden.
Die Gesamtdatei wird dann einfach so übersetzt, als stünde anstelle des Befehls der Inhalt der angegebenen
Datei. (Einzubindende Dateien haben also i.d.R. keine eigene Präambel!)
Der `\input`-Befehl kann auch verschachtelt werden, d.h. eingebundene Dateien können wiederum `\input`-Befehle enthalten.


## Übersetzung
Da man in der Praxis meistens ein PDF-Dokument als Ergebnis haben möchte, ist einer der wichtigsten Befehle
das Kommando pdflatex. Hat man also eine `.tex`-Datei fertiggestellt, kann man ihn über die Kommandozeile so anwenden:
	`pdflatex myfile.tex`
Das Ausführen dieses Befehls resultiert entweder in

1. einem Haufen Fehlermeldungen, wenn die Eingabedatei Syntaxfehler wie vergessene Klammern enthält, oder
2. einer PDF-Datei `myfile.pdf`, die das fertige Dokument enthält, sowie einigen Hilfsdateien.
	Ggf. können auch Warnungen ausgegeben werden, wenn pdflatex zwar eine Datei erzeugen konnte, diese aber gewisse "Unsauberkeiten" enthält; dies kommt z.B. dann vor, wenn eine Zeile zu lang oder zu kurz für den Blocksatz ist.

## Editoren
Puristen mögen einen einfachen Texteditor und die Kommandozeile bevorzugen, jedoch gibt es viele verschiedene
Editoren, die speziell für LaTeX-Dokumente ausgelegt sind. Hier ist beispielsweise [TeXstudio](http://www.texstudio.org/) zu empfehlen,
der durch eine eingebaute Vorschau sowie Shortcuts für die wichtigsten Befehle überzeugt. Es gibt jedoch noch
viele andere Editoren, die verschiedene Features und Schwerpunkte aufweisen.

## Handout
Grundsätzliches zu LaTeX und einige Links findet ihr in diesem [Handout](../pdf/Handout.pdf). Besonders hervorzuheben ist der Link zu [Detexify](http://detexify.kirelabs.org/classify.html), ein kleine Webpage, die euch hilft, für verschiedene Symbole den richtigen LaTeX-Befehl zu finden. Ihr könnt dafür das Symbol einfach zeichnen und Detexify erkennt automatisch, was ihr meint.
 

