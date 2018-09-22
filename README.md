# Latex-Vorlage für Abschlussarbeiten

Inoffizielle, unverbindliche und unvollständige Latex-Vorlage für Abschlussarbeiten am IWI. Bei Problemen oder Fragen bitte ein Issue eröffnen

# Benutzung
Zum Erzeugen des PDFs müssen nacheinander die folgenden Schritte ausgeführt werden. Dies kann entweder über die Konsole oder direkt aus der Latex-Umgebung heraus geschehen.
```
pdflatex main.tex
biber main.bcf
makeglossaries main
pdflatex main.tex
```
[Biber](https://sourceforge.net/projects/biblatex-biber/files/latest/download) muss gegebenenfalls separat installiert werden.
