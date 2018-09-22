\ProvidesClass{iwi}
\DeclareOption{eisenecker}

\makeatletter
\newcommand\InFloat[2]{\@ifundefined{@captype}{#2}{#1}}
\makeatother

{
  \PassOptionsToPackage{singlespacing}{setspace}
  \PassOptionsToClass{a4paper,10pt,fleqn,oneside,final, listof=totoc, index=totoc,numbers=noendperiod, ngerman, abstracton}{scrreprt}
}
\DeclareOption*{}
{
  \PassOptionsToPackage{onehalfspacing}{setpace}
  \PassOptionsToClass{a4paper,12pt,fleqn,oneside,final, listof=totoc, index=totoc,numbers=noendperiod, ngerman, abstracton}{scrreprt}
}
\ProcessOptions
\LoadClass{scrreprt}
\renewcommand{\abstractname}{Abstract}
\RequirePackage[ngerman]{babel}

\addto\captionsngerman{\renewcommand*\abstractname{Abstract}}
\addto\captionsenglish{\renewcommand*\abstractname{Summary}}
\setuptoc{toc}{totoc}


% Formatierung
\RequirePackage[a4paper, vmargin={2.5cm, 1.5cm},hmargin={3.0cm,2.5cm}]{geometry} % Seitenränder einstellen
\RequirePackage[hyphens]{url}
\urlstyle{same} %URL selbe Font wie Text
\clubpenalty = 10000 \widowpenalty = 10000 \displaywidowpenalty = 10000 % Schusterjungen und Hurenkinder vermeiden

% Überschriften
\renewcommand*{\chapterheadstartvskip}{\vspace{0pt}}%
\renewcommand*{\chapterheadendvskip}{\vspace{18pt}}%
\addtokomafont{chapter}{\large\sffamily}
\addtokomafont{section}{\normalsize\sffamily}
\addtokomafont{subsection}{\normalsize\sffamily}
\addtokomafont{subsubsection}{\normalsize\sffamily}
\addtokomafont{paragraph}{\normalsize\sffamily}
\addtokomafont{subparagraph}{\normalsize\sffamily}
\let\origitemize\itemize \def\itemize{\origitemize\itemsep0pt}
\let\origdescription\description \def\description{\origdescription\itemsep0pt}
\let\origenumerate\enumerate \def\enumerate{\origenumerate\itemsep0pt}

% Schrift
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}


% Kopf- und Fußzeile
\RequirePackage{fancyhdr}

\fancypagestyle{plain}{%
\fancyhf{}%
\fancyhead[R]{\thepage}
}
\pagestyle{plain}
\fancyhf{}%
\fancyhead[R]{\thepage}
\pagestyle{fancy}
\RequirePackage{setspace}

% Counter für die Anzahl der Frontseiten (Verzeichnisse etc)
\newcounter{frontpages}

% Formeln

\RequirePackage{float}
\newfloat{formel}{H}{for}
\floatname{formel}{Formel}
\providecommand{\abs}[1]{\left|#1\right|}

% 
% PDF-Optionen
% 
\RequirePackage[
bookmarks=true, 
   % Lesezeichen erzeugen
bookmarksopen=true, 
   % Lesezeichen ausgeklappt
bookmarksnumbered=true, 
   % Anzeige der Kapitelzahlen am Anfang der Namen der Lesezeichen
breaklinks=true, 
   % ermöglicht einen Umbruch von URLs
colorlinks=true, 
   % Einfärbung von Links
linkcolor=black, 
   % Linkfarbe: schwarz
anchorcolor=black, 
   % Ankerfarbe: schwarz
citecolor=black, 
   % Literaturlinks: schwarz
filecolor=black, 
   % Links zu lokalen Dateien: schwarz
menucolor=black, 
   % Acrobat Menü Einträge: schwarz
urlcolor=black,
   % URL-Farbe: schwarz
unicode=true
]
{hyperref}

% Verzeichnisse
\RequirePackage[
	makeindex,
	nonumberlist, %keine Seitenzahlen anzeigen
	acronym,      %ein Abkürzungsverzeichnis erstellen
	toc,
	style=long4col
	]
	{glossaries}

\newglossary[slg]{symb}{syi}{syg}{Symbolverzeichnis} %Symbolverzeichnis erstellen
\makeglossaries %Glossar-Befehle anschalten
\RequirePackage{scrhack}
