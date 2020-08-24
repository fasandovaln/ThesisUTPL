%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% ===================================================================
%% LaTeX document class for typesetting theses of the UTPL
%% ===================================================================
%%
%% Creado por: Francisco Alberto Sandoval Noreña
%% e-mail: fasandoval@utpl.edu.ec
%% 
%% ===================================================================
%%
%% Version 2.0.0
%% Date: 20/08/2020
%% Changes: 
%% - Actualización completa del formato en relación a la actualización del formato para
%%   tesis de la UTPL por parte de la bilioteca. 
%%
%% Version 1.2.2
%% Date: 28/02/2020
%% Changes:
%% - Se agregó el paquete algorithm2e para la inclusión de algoritmos en la tesis. 
%% - Se agregó la lista de algoritmos a la tabla de contenidos. 
%% - Se agregó el paquete siunitx para facilitar la escritura correcta de acuerdo a la norma del SI. 
%% - Se suprimió el cap 2 que era de relleno, únicamente para mostrar el formato. 
%%
%% Version 1.2.1
%% Date: 16/12/2019
%% Changes:
%% - Cambio de numeración de las primeras páginas a números romanos en ``minúsculas''
%% - Eliminar la cursiva del título en las subsubsection y paragraph. 
%% - Correción de etiqueta ``Figura'' en anexos
%%
%% Version 1.2.0
%% Date: 06/12/2019
%% Changes: 
%% - Exclusión del término ``Portada'' del índice de contenidos. 
%% - Modificación del formato de los Anexos por sugerencia de biblioteca. 
%% - Se agregó un punto al final de toda la numeración de secciones, subsecciones, etc.
%%
%% Version 1.1.0
%% Date: 07/11/2019
%% Changes: 
%% - Modificación de espacio entre líneas en captions de figuras y tablas. 
%% - Modificación de espacio horizontal en caption para Longtable
%% - Modificación de presentación, enumeración y presentación en tabla de contenidos del apartado %%   de Anexos.
%%
%% Version 1.0.0
%% Date: 10/10/2019
%% Changes: 
%% - Plantilla aprobada por la Biblioteca de la UTPL, una vez implementados todos los 
%%   cambios sugeridos. 
%% - Inicio del empleo de una modificación de Semantic Versioning para el versionado.
%%
%% Version 0.41
%% Date: 09/10/2019
%% Changes:
%% - Corregido: Alineación de palabra ``Trabajo de Titulación.'' en la carátula por
%%   sugerencia de Biblioteca
%% - Corregido: Formato de labels para sublistas y espacio en listas. 
%%
%% Version 0.4
%% Date: 23/09/2019
%% Changes: 
%% - Actualización de escudo a color en carátula de la primera página. 
%% - Inversión de orden entre Bibliografía y Anexos. 
%% - Corregido: Márgen similar para todas las páginas sin discriminación de página 
%%   izquierda o derecha. (Sugerencia de biblioteca)
%% - Corregido: Eliminación de hojas en blanco adicionales luego de fin de capítulo 
%%   (Sugerencia de biblioteca).
%% - Corregido: Eliminar espacio adicional de listas respecto al pàrrafo (sugerencia 
%%   de biblioteca).
%% - Corregido: Error tipográfico en cesión de derechos de autor para varios autores. 
%%
%% Version 0.3 
%% Date: 15/04/2019
%% Changes: 
%%  - Corregido: espacio al inicio de la hoja para títulos de Índice de contenidos, 
%%    Lista de Figuras y Lista de Tablas.
%%  - Corregido: links en el Índice de contenidos para páginas iniciales.
%%  - Actualización de numeración de capítulo a número arábigo.
%%  - Reducir espacio en listas (itemize y enumerate)
%%
%% Version 0.2
%% Date: 07/11/2018
%%
%% Version 0.1
%% Date: 18/03/2017
%%
%% ===================================================================
%% Copyright (C)
%% Any modified versions of this file must be renamed
%% with new filenames distinct from ThesisUTPL.cls.
%% 
%% Based on the book class. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\filedate}{} 
\newcommand{\fileversion}{}
\renewcommand{\filedate}{2019/09/23}
\renewcommand{\fileversion}{0.4}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ThesisUTPL}%
[\filedate\space v\fileversion\space UTPL thesis class]
%
% ====================================================================
% Opciones de estilo
% ====================================================================
%
% booleans
\makeatletter
\RequirePackage{ifthen}
%
% Autor único o múltiples autores
\newcommand{\CantAutores}{unAutor}
%
\DeclareOption{dosAutores}{%
	\renewcommand{\CantAutores}{dosAutores}
}
%
\DeclareOption{tresAutores}{%
	\renewcommand{\CantAutores}{tresAutores}
}
%
% Hiperenlaces
\newcommand{\Hiperenlaces}{off}
%
\DeclareOption{hiperenlaces}{%
	\renewcommand{\Hiperenlaces}{on}
}

\ProcessOptions\relax
%
% ====================================================================
% Estilo base
% ====================================================================
%
% Based on Book class
\LoadClass[a4paper, 11pt, oneside]{book} 
%
% ====================================================================
% Paquetes requeridos
% ====================================================================
%
% inputenc - Accept different input encodings
\RequirePackage[utf8]{inputenc}

% fontenc - Standard package for selecting font encodings
\RequirePackage[T1]{fontenc}

% Spacing between lines
\usepackage{setspace}
%
% babel - Simplified Spanish support for Babel (hyphenation) 
\RequirePackage[spanish,es-nodecimaldot,es-tabla]{babel} 

% urw-arial – URW Arial font pack for use with LATEX
\RequirePackage[scaled]{helvet}
%\RequirePachelkage[scaled]{uarial}
\renewcommand{\familydefault}{\sfdefault}

% Soport math simbols-fonts.
\RequirePackage{amsmath,amssymb,amsfonts,latexsym}

% siunitx - A comprehensive (SI) units package
\RequirePackage{siunitx}

% graphicx - Enhanced support for graphics
\RequirePackage{graphicx}

% xcolor - Driver-independent color extensions for LATEX and pdfLATEX
\RequirePackage[x11names,table]{xcolor}

% Deprecated: Figures divided into subfigures
\RequirePackage{subfigure}
\subfiglabelskip=0pt

% longtable – Allow tables to flow over page boundaries
\RequirePackage{longtable} 
% multirow – Create tabular cells spanning multiple rows
\RequirePackage{multirow}
% booktabs – Publication quality tables in LATEX
\RequirePackage{booktabs}

% listings - source code printer for LATEX 	
\RequirePackage{listings}

% algorithm2e - package for algorithms
\usepackage[ruled,vlined,lined,linesnumbered,algochapter,spanish]{algorithm2e}
	% Extra vertical space before and after algorithm.
\SetAlgoSkip{bigskip} 

% enumitem - Customize lists
\RequirePackage{enumitem}
\setlist{noitemsep, nosep, left=0pt} % reducir espacio en listas 
% formato para labels en sublistas 
\setlist[enumerate,1]{label = \arabic*.}
\setlist[enumerate,2]{label = \emph{\alph*}.}
\setlist[enumerate,3]{label = \roman*.}
\setlist[enumerate,4]{label = \Alph*.}

% morefloats – Increase the number of simultaneous LATEX floats
\RequirePackage[maxfloats=25]{morefloats}

% url – Verbatim with URL-sensitive line breaks
\RequirePackage[hyphens]{url}
\urlstyle{same}

\ifthenelse{\equal{\Hiperenlaces}{on}}{%
%
% hyperref – Extensive support for hypertext in LATEX
\RequirePackage[breaklinks=true]{hyperref} 
\definecolor{AzulOscuro}{RGB}{32,74,135} 
\definecolor{VerdeOscuro}{RGB}{0,120,0} 
\definecolor{RojoOscuro}{RGB}{170,0,0}
\hypersetup{
	colorlinks= true ,       % false: boxed links; true: colored links
	linkcolor = black,  	 % color of internal links (change box color with linkbordercolor)
%	linkcolor = RojoOscuro,  % color of internal links (change box color with linkbordercolor)
	citecolor = black, 		 % color of links to bibliography
%	citecolor = VerdeOscuro, % color of links to bibliography
	filecolor = magenta,     % color of file links
	urlcolor  = AzulOscuro   % color of external links
}
}{}%

% titlesec - Modify title format
\RequirePackage{titlesec}

% Modifying the typesetting of appendix titles
\RequirePackage[titletoc]{appendix}

\setcounter{secnumdepth}{5} % seting level of numbering (default for "report" is 3). With ''-1'' you have non number also for chapters
%\setcounter{tocdepth}{5} % if you want all the levels in your table of contents

% vmargin - Margins and paper sizes
\RequirePackage{vmargin}

% fancyhdr - Page layout: Cambiar posición de número de página.
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead{} % clear all header fields
\fancyhead[R]{\thepage}
\fancyfoot{} % clear all footer fields

\fancypagestyle{plain}{%
	\fancyhf{} % clear all header and footer fields
	\fancyhead{} % clear all header fields
	\fancyfoot{} % clear all footer fields
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

% caption - The caption package provides many ways to customise the captions in
%           floating environments such figure and table
\RequirePackage{caption}
\captionsetup[figure]{font={small,doublespacing},labelfont=bf,textfont=it,labelsep=newline,justification=raggedright,singlelinecheck=false, position=top, format=plain, skip=10pt}
\captionsetup[table]{font={small,doublespacing},labelfont=bf,,textfont=it,labelsep=newline,justification=raggedright,singlelinecheck=false, position=top, format=plain, skip=10pt}
%
%%- Bibliografia y referencias -%%
\RequirePackage{csquotes}
\RequirePackage[style=apa, backend=biber, autocite=inline]{biblatex}
% 
% fmtcount - Printing numbers as words. 
\RequirePackage{fmtcount}
%
% ====================================================================
% Diseño de página 
% ====================================================================
%
%%- Tamaño de página -%%
\setpapersize{A4}
%%- Márgenes -%% 
\setmarginsrb{2.54cm}		% margen izquierdo
{1.5cm}						% margen superior
{2.54cm}					% margen derecho	
{2.54cm}					% margen inferior 
{12pt}						% altura de encabezados 
{0.9cm}						% espacio entre el texto y los encabezados
{0pt}						% altura del pie de página
{11mm}						% espacio entre el texto y pie de página
%
%%- Interlineado del documento -%%
\def\mystretch{2}
\def\baselinestretch{\mystretch}
%
%%- Sangría de los párrafos del documento -%%
\setlength{\parindent}{0pt}
%
%%- Espacio entre 2 párrafos -%%
%\setlength{\parskip}{12pt} % 12pt 
%
\setlength\intextsep{20pt} 	% Moficar espacio antes de elementos flotantes (Figuras, Tablas, etc.)
%
% ====================================================================
% Introducción de información básica
% ====================================================================
%

% Datos del (los) autor(es)
\newcommand{\utpl@autorNombresI}{}
\newcommand{\autorNombresI}[1]{\renewcommand{\utpl@autorNombresI}{#1}}

\newcommand{\utpl@autorApellidosI}{}
\newcommand{\autorApellidosI}[1]{\renewcommand{\utpl@autorApellidosI}{#1}}

\newcommand{\utpl@autorCedulaI}{}
\newcommand{\autorCedulaI}[1]{\renewcommand{\utpl@autorCedulaI}{#1}}

\newcommand{\utpl@autorNombresII}{}
\newcommand{\autorNombresII}[1]{\renewcommand{\utpl@autorNombresII}{#1}}

\newcommand{\utpl@autorApellidosII}{}
\newcommand{\autorApellidosII}[1]{\renewcommand{\utpl@autorApellidosII}{#1}}

\newcommand{\utpl@autorCedulaII}{}
\newcommand{\autorCedulaII}[1]{\renewcommand{\utpl@autorCedulaII}{#1}}

\newcommand{\utpl@autorNombresIII}{}
\newcommand{\autorNombresIII}[1]{\renewcommand{\utpl@autorNombresIII}{#1}}

\newcommand{\utpl@autorApellidosIII}{}
\newcommand{\autorApellidosIII}[1]{\renewcommand{\utpl@autorApellidosIII}{#1}}

\newcommand{\utpl@autorCedulaIII}{}
\newcommand{\autorCedulaIII}[1]{\renewcommand{\utpl@autorCedulaIII}{#1}}

\newcommand{\utpl@autorGeneroI}{}
\newcommand{\autorGeneroI}[1]{\renewcommand{\utpl@autorGeneroI}{#1}}

% Datos del director de la tesis
\newcommand{\utpl@directorNombres}{}
\newcommand{\directorNombres}[1]{\renewcommand{\utpl@directorNombres}{#1}}

\newcommand{\utpl@directorApellidos}{}
\newcommand{\directorApellidos}[1]{\renewcommand{\utpl@directorApellidos}{#1}}

\newcommand{\utpl@directorTitulo}{}
\newcommand{\directorTitulo}[1]{\renewcommand{\utpl@directorTitulo}{#1}}

\newcommand{\utpl@directorTituloAbv}{}
\newcommand{\directorTituloAbv}[1]{\renewcommand{\utpl@directorTituloAbv}{#1}}

\newcommand{\utpl@directorCedula}{}
\newcommand{\directorCedula}[1]{\renewcommand{\utpl@directorCedula}{#1}}

\newcommand{\utpl@directorGenero}{}
\newcommand{\directorGenero}[1]{\renewcommand{\utpl@directorGenero}{#1}}

% Datos del coordinador de la titulación
\newcommand{\utpl@coordinadorNombres}{}
\newcommand{\coordinadorNombres}[1]{\renewcommand{\utpl@coordinadorNombres}{#1}}

\newcommand{\utpl@coordinadorApellidos}{}
\newcommand{\coordinadorApellidos}[1]{\renewcommand{\utpl@coordinadorApellidos}{#1}}

\newcommand{\utpl@coordinadorTitulo}{}
\newcommand{\coordinadorTitulo}[1]{\renewcommand{\utpl@coordinadorTitulo}{#1}}

\newcommand{\utpl@coordinadorTituloAbv}{}
\newcommand{\coordinadorTituloAbv}[1]{\renewcommand{\utpl@coordinadorTituloAbv}{#1}}

\newcommand{\utpl@coordinadorGenero}{}
\newcommand{\coordinadorGenero}[1]{\renewcommand{\utpl@coordinadorGenero}{#1}}

% Datos de la tesis
\newcommand{\utpl@tema}{}
\newcommand{\tema}[1]{\renewcommand{\utpl@tema}{#1}}

\newcommand{\utpl@titulacion}{}
\newcommand{\titulacion}[1]{\renewcommand{\utpl@titulacion}{#1}}

\newcommand{\utpl@tituloObtenido}{}
\newcommand{\tituloObtenido}[1]{\renewcommand{\utpl@tituloObtenido}{\uppercase{#1}}}

\newcommand{\utpl@area}{}
\newcommand{\area}[1]{\renewcommand{\utpl@area}{\uppercase{#1}}}

\newcommand{\utpl@ciudad}{}
\newcommand{\ciudad}[1]{\renewcommand{\utpl@ciudad}{\uppercase{#1}}}

\newcommand{\utpl@pais}{}
\newcommand{\pais}[1]{\renewcommand{\utpl@pais}{\uppercase{#1}}}

\newcommand{\utpl@dia}{}
\newcommand{\dia}[1]{\renewcommand{\utpl@dia}{#1}}

\newcommand{\utpl@mes}{}
\newcommand{\mes}[1]{\renewcommand{\utpl@mes}{#1}}

\newcommand{\utpl@ano}{}
\newcommand{\ano}[1]{\renewcommand{\utpl@ano}{#1}}

\newcommand{\utpl@ciudadOficioAprobacion}{}
\newcommand{\ciudadOficioAprobacion}[1]{\renewcommand{\utpl@ciudadOficioAprobacion}{#1}}

\newcommand{\utpl@contenidos}{}
\newcommand{\contenidos}[1]{\renewcommand{\utpl@contenidos}{#1}}

\newcommand{\utpl@listOfAlgorithmsQ}{}
\newcommand{\listOfAlgorithmsQ}[1]{\renewcommand{\utpl@listOfAlgorithmsQ}{#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ====================================================================
% Página: Caratula
% ====================================================================
%
\newcommand{\paginaCaratula}{%
	\renewcommand{\baselinestretch}{1.5}
\begin{titlepage}
	
	\setmarginsrb{30mm}{30mm}{30mm}{30mm}{0pt}{0mm}{0pt}{0mm}
	\addcontentsline{toc}{chapter}{Carátula} % Agregar contenido a la tabla de contenidos
	
	\begin{center}	
		\includegraphics[width=0.18\textwidth]{FIGURES/utpl_escudo_azul} \\
		
		\vspace{1cm}
		{\fontsize{18}{23}\selectfont \textbf{UNIVERSIDAD TÉCNICA PARTICULAR DE LOJA}} \\
		\vspace{-0.2cm}
		{\fontsize{16}{20}\selectfont \fontfamily{ptm} \textit{La Universidad Católica de Loja}} \\
		\vspace{1cm}
		
		{\fontsize{18}{23}\selectfont \textbf{ÁREA \utpl@area}} \\
		\vspace{1cm}
		{\fontsize{16}{20}\selectfont \textbf{\utpl@tituloObtenido}} \\
		\vspace{0.5cm}
		\begin{flushright}
			TRABAJO DE TITULACIÓN \textcolor{white}{\hspace{0.5cm}}  \\
		\end{flushright}
		\vspace{0.5cm}
		{\fontsize{16}{20}\selectfont \utpl@tema} \\
		\vspace{0.5cm}
		\begin{flushleft}
			\ifthenelse{\equal{\CantAutores}{unAutor}}%
				{\ifthenelse{\equal{\utpl@autorGeneroI}{m}}{\fontsize{12}{14}\selectfont \textbf{Autor:}}{\fontsize{12}{14}\selectfont \textbf{Autora:}}}%
				{\fontsize{12}{14}\selectfont \textbf{Autores:}} %
			\ifthenelse{\equal{\CantAutores}{unAutor}}%
				{\fontsize{12}{14}\selectfont \utpl@autorApellidosI, \utpl@autorNombresI \\}{}%
			\ifthenelse{\equal{\CantAutores}{dosAutores}}%	
				{\par \fontsize{12}{14}\selectfont \hspace{1cm} \utpl@autorApellidosI, \utpl@autorNombresI \\ \hspace{1cm} \utpl@autorApellidosII, \utpl@autorNombresII \\}{}%
			\ifthenelse{\equal{\CantAutores}{tresAutores}}%	
				{\par \fontsize{12}{14}\selectfont \hspace{1cm} \utpl@autorApellidosI, \utpl@autorNombresI \\ %
					  \hspace{1cm} \utpl@autorApellidosII, \utpl@autorNombresII \\ %
					  \hspace{1cm} \utpl@autorApellidosIII, \utpl@autorNombresIII \\}{}%
			\ifthenelse{\equal{\utpl@directorGenero}{m}}{\fontsize{12}{14}\selectfont \textbf{Director:}}{\fontsize{12}{14}\selectfont \textbf{Directora:}} {\fontsize{12}{14}\selectfont \utpl@directorApellidos, \utpl@directorNombres, \utpl@directorTituloAbv} \\
		\end{flushleft}
		\vspace{1cm}
		
		{\fontsize{12}{14}\selectfont \utpl@ciudad \, -\, \utpl@pais \\
		\utpl@ano}	
	\end{center}	
	\pagenumbering{roman}
\end{titlepage}
}%
%
% ====================================================================
% Página: Aprobación del director del Trabajo de Titulación
% ====================================================================
%
\newcommand{\paginaAprobacion}{%
	\newpage
	\phantomsection
	\setcounter{page}{2}
	\newcommand{\aprobacionTitleText}{\textbf{Aprobación} \ifthenelse{\equal{\utpl@directorGenero}{m}}{\textbf{del director}}{\textbf{de la directora}} \textbf{del Trabajo de Titulación}}
	% Agregar contenido a la tabla de contenidos
	\begin{center}
		\aprobacionTitleText \\
	\end{center}
	\ifthenelse{\equal{\utpl@directorGenero}{m}}%
		{\addcontentsline{toc}{chapter}{Aprobación del director del Trabajo de Titulación}}%
		{\addcontentsline{toc}{chapter}{Aprobación de la directora del Trabajo de Titulación}}% 
	\vspace{1cm}
	
	\utpl@ciudadOficioAprobacion, \utpl@dia \, de \utpl@mes \, de \utpl@ano \\
	\par
	\utpl@coordinadorTitulo. \\
	\utpl@coordinadorNombres \, \utpl@coordinadorApellidos \\
	\ifthenelse{\equal{\utpl@coordinadorGenero}{m}}{\textbf{Coordinador}}{ \textbf{Coordinadora}} \textbf{de Titulación}
	
	\par 
	\vspace{1.5cm}
	Ciudad.-
	\par
	De mi consideración: 
	\par
	\vspace{1.5cm}
	El presente trabajo de titulación denominado: ``\utpl@tema'' realizado por %
	\ifthenelse{\equal{\CantAutores}{unAutor}}{\utpl@autorApellidosI \, \utpl@autorNombresI}{}%
	\ifthenelse{\equal{\CantAutores}{dosAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI \, y \utpl@autorApellidosII \, \utpl@autorNombresII}{}%
	\ifthenelse{\equal{\CantAutores}{tresAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI, \utpl@autorApellidosII \, \utpl@autorNombresII \, y \utpl@autorApellidosIII \, \utpl@autorNombresIII}{}%
	, ha sido orientado y revisado durante su ejecución, por cuanto se aprueba la presentación del mismo. Así mismo, doy fe que dicho Trabajo de Titulación ha sido revisado por la herramienta antiplagio institucional. \\
	\par
	
	Particular que comunico para los fines pertinentes.
	\par
	\vspace{1cm}
	Atentamente,	
	\par
	\vspace{2cm}
	\utpl@directorNombres \, \utpl@directorApellidos \\
	C.I.: \utpl@directorCedula
}%
%
% ====================================================================
% Página: Declaración de Autoría y Cesión de Derechos
% ====================================================================
%
\newcommand{\paginaAutoria}{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{Declaración de autoría y cesión de derechos} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{Declaración de autoría y cesión de derechos} \\
	\end{center}	
	
	\ifthenelse{\equal{\CantAutores}{unAutor}}{%
		``Yo \textit{\utpl@autorApellidosI \, \utpl@autorNombresI} declaro y acepto en forma expresa lo siguiente:
		\begin{itemize}[label=$\bullet$]
			\item Ser \ifthenelse{\equal{\utpl@autorGeneroI}{m}}{autor}{autora} \, del Trabajo de Titulación denominado: \utpl@tema, específicamente de los contenidos comprendidos en: \utpl@contenidos, siendo \textit{\utpl@directorNombres \, \utpl@directorApellidos}  \ifthenelse{\equal{\utpl@directorGenero}{m}}{director}{directora} del presente trabajo; y, en tal virtud, eximo expresamente a la Universidad Técnica Particular de Loja y a sus representantes legales de posibles reclamos o acciones judiciales o administrativas, en relación a la propiedad intelectual. Además, ratifico que las ideas, conceptos, procedimientos y resultados vertidos en el presente trabajo investigativo son de mi exclusiva responsabilidad.
			
			\item Que mi obra, producto de mis actividades académicas y de investigación, forma parte del patrimonio de la Universidad Técnica Particular de Loja, de conformidad con el artículo 20, literal j), de la Ley Orgánica de Educación Superior; y, artículo 91 del Estatuto Orgánico de la UTPL, que establece: ``Forman parte del patrimonio de la Universidad la propiedad intelectual de investigaciones, trabajos científicos o técnicos y tesis de grado que se realicen a través, o con el apoyo financiero, académico o institucional (operativo) de la Universidad''.  
			
			\item Autorizo a la Universidad Técnica Particular de Loja para que pueda hacer uso de mi obra con fines netamente académicos, ya sea de forma impresa, digital y/o electrónica o por cualquier medio conocido o por conocerse, sirviendo el presente instrumento como la fe de mi completo consentimiento; y, para que sea ingresada al Sistema Nacional de Información de la Educación Superior del Ecuador para su difusión pública, en cumplimiento del artículo 144 de la Ley Orgánica de Educación Superior.''    
		\end{itemize}
	
		\vspace{0.5cm}
		Firma: .............................................. \\
		\ifthenelse{\equal{\utpl@autorGeneroI}{m}}{Autor}{Autora}: \utpl@autorNombresI \, \utpl@autorApellidosI  \\
		C.I.: \utpl@autorCedulaI
	}{%
		``Nosotros 
		\ifthenelse{\equal{\CantAutores}{dosAutores}}{\textit{\utpl@autorApellidosI \, \utpl@autorNombresI \, y \utpl@autorApellidosII \, \utpl@autorNombresII} \,}{}%
		\ifthenelse{\equal{\CantAutores}{tresAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI, \, \utpl@autorApellidosII \, \utpl@autorNombresII \, y \utpl@autorApellidosIII \, \utpl@autorNombresIII \,}{}%
		 \, declaramos y aceptamos en forma expresa lo siguiente:
		\begin{itemize}[label=$\bullet$]
			\item Ser autores del Trabajo de Titulación denominado: \utpl@tema, específicamente de los contenidos comprendidos en: \utpl@contenidos, siendo \textit{\utpl@directorNombres \, \utpl@directorApellidos}  \ifthenelse{\equal{\utpl@directorGenero}{m}}{director}{directora} del presente trabajo; y, en tal virtud, eximimos expresamente a la Universidad Técnica Particular de Loja y a sus representantes legales de posibles reclamos o acciones judiciales o administrativas, en relación a la propiedad intelectual. Además, ratificamos que las ideas, conceptos, procedimientos y resultados vertidos en el presente trabajo investigativo son de nuestra exclusiva responsabilidad.
			
			\item Que nuestra obra, producto de nuestras actividades académicas y de investigación, forma parte del patrimonio de la Universidad Técnica Particular de Loja, de conformidad con el artículo 20, literal j), de la Ley Orgánica de Educación Superior; y, artículo 91 del Estatuto Orgánico de la UTPL, que establece: ``Forman parte del patrimonio de la Universidad la propiedad intelectual de investigaciones, trabajos científicos o técnicos y tesis de grado que se realicen a través, o con el apoyo financiero, académico o institucional (operativo) de la Universidad''.  
			
			\item Autorizamos a la Universidad Técnica Particular de Loja para que pueda hacer uso de nuestra obra con fines netamente académicos, ya sea de forma impresa, digital y/o electrónica o por cualquier medio conocido o por conocerse, sirviendo el presente instrumento como la fe de nuestro completo consentimiento; y, para que sea ingresada al Sistema Nacional de Información de la Educación Superior del Ecuador para su difusión pública, en cumplimiento del artículo 144 de la Ley Orgánica de Educación Superior.''    
		\end{itemize}
			
		%
		\ifthenelse{\equal{\CantAutores}{dosAutores}}{
			\vspace{0.5cm}
			Firma: .............................................. \\
			\ifthenelse{\equal{\utpl@autorGeneroI}{m}}{Autor}{Autora}: \utpl@autorNombresI \, \utpl@autorApellidosI  \\
			C.I.: \utpl@autorCedulaI
			
			\vspace{0.5cm}
			Firma: .............................................. \\
			\ifthenelse{\equal{\utpl@autorGeneroII}{m}}{Autor}{Autora}: \utpl@autorNombresII \, \utpl@autorApellidosII  \\
			C.I.: \utpl@autorCedulaII
		}{}%
		\ifthenelse{\equal{\CantAutores}{tresAutores}}{
			\vspace{0.5cm}
			Firma: .............................................. \\
			\ifthenelse{\equal{\utpl@autorGeneroI}{m}}{Autor}{Autora}: \utpl@autorNombresI \, \utpl@autorApellidosI  \\
			C.I.: \utpl@autorCedulaI
			
			\vspace{0.5cm}
			Firma: .............................................. \\
			\ifthenelse{\equal{\utpl@autorGeneroII}{m}}{Autor}{Autora}: \utpl@autorNombresII \, \utpl@autorApellidosII  \\
			C.I.: \utpl@autorCedulaII
			
			\vspace{0.5cm}
			Firma: .............................................. \\
			\ifthenelse{\equal{\utpl@autorGeneroIII}{m}}{Autor}{Autora}: \utpl@autorNombresIII \, \utpl@autorApellidosIII  \\
			C.I.: \utpl@autorCedulaIII
		}{}%
	}%	
}%
%
% ====================================================================
% Página: Dedicatoria
% ====================================================================
%
\newcommand{\paginaDedicatoria}[1]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{Dedicatoria} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{Dedicatoria} \\
	\end{center}
	#1	
}%
%
% ====================================================================
% Página: Agradecimiento
% ====================================================================
%
\newcommand{\paginaAgradecimiento}[1]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{Agradecimiento} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{Agradecimiento} \\
	\end{center}
	#1	
}%
%
% ====================================================================
% Página: Listas de Contenidos, Figuras, y Tablas
% ==================================================================== 
%
\newcommand{\paginaListas}{%

	\titleformat{\chapter}[hang]{\filcenter\bfseries}{}{0pt}{}
	\titlespacing{\chapter}{0pt}{*0}{*1}

	\renewcommand{\contentsname}{Índice de Contenido}%
	\renewcommand{\listfigurename}{Índice de Figuras}%
	\renewcommand{\listtablename}{Índice de Tablas}%
	\SetAlgorithmName{Algoritmo}{Algoritmo}{Índice de Algoritmos} 


	\tableofcontents
	
	\addcontentsline{toc}{chapter}{Índice de Contenido}	
	
	{%  
		\let\oldnumberline\numberline%  
		\renewcommand{\numberline}{\tablename~\oldnumberline}%  
		\listoftables%  
	}
	
	\addcontentsline{toc}{chapter}{Índice de Tablas} 
	
	{%  
		\let\oldnumberline\numberline%  
		\renewcommand{\numberline}{\figurename~\oldnumberline}%  
		\listoffigures%  
	}

	\addcontentsline{toc}{chapter}{Índice de Figuras}
	
	\ifthenelse{\equal{\utpl@listOfAlgorithmsQ}{Y}}{
		\begingroup
			\let\oldnumberline\numberline
			\renewcommand{\numberline}{Algoritmo~\oldnumberline}
			\listofalgorithms
		\endgroup
	}{}
	
	\addcontentsline{toc}{chapter}{Índice de Algoritmos} 
}%
%
% ====================================================================
% Página: Resumen
% ====================================================================
%
\newcommand{\paginaResumen}[2]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{Resumen} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{Resumen} \\
	\end{center}
	#1 \\
	\par
	\textbf{Palabras claves:} #2 
	
	\pagenumbering{arabic}	
}
%
% ====================================================================
% Página: Abstract
% ====================================================================
%
\newcommand{\paginaAbstract}[2]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{Abstract} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{Abstract} \\
	\end{center}
	#1 \\
	\par
	\textbf{Keywords:} #2 	
}
%
% ====================================================================
% Página:Lista de Abreviaturas y Símbolos
% ====================================================================
%
\newcommand{\paginaListaAbrSim}[3]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{#1} % Agregar contenido a la tabla de contenidos
\begin{center}
	\textbf{#1} \\
\end{center}
\vspace{5pt}
\begin{description}[font=\sffamily\normalfont, leftmargin=#2cm, style=nextline,] % labelindent=-2em
	#3	
\end{description}
}
%
% ====================================================================
% Enviroment: Introducción, Conclusiones, Recomendaciones
% ====================================================================
%
\newenvironment{UnnumberedChapter}[1]
{%
	\setcounter{secnumdepth}{-1}
	\setlength{\parindent}{1.27cm} 	% agregar sangría
	
	% modificar formato de título para el capitulo
	\titleformat{\chapter}[hang]{}{}{}{\normalfont\filcenter\bfseries}
	\titleformat{\section}[hang]{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subsection}{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subsubsection}{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\paragraph}[runin]{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subparagraph}[runin]{\normalfont\scshape\bfseries}{}{0pt}{}
	
	\titlespacing*{\chapter}{0pt}{-5mm}{2.3ex plus .2ex}
	\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	
	\chapter*{#1} 
	\addcontentsline{toc}{chapter}{#1} % Agregar contenido a la tabla de contenidos
}

%
% ====================================================================
% Chapters Format
% ====================================================================
%
\newcommand{\ChapterFormat}{%
	\setcounter{secnumdepth}{5}
	\setlength{\parindent}{1.27cm}		% agregar sangría

	\titleformat{\chapter}[display]{\vfill\filcenter\bfseries}{\chaptertitlename \hspace{1pt} \numberstring{chapter}}{1pc}{}									
	\titleformat{\section}{\bfseries}{\thesection}{0.5em}{}
	\titleformat{\subsection}{\bfseries\itshape}{\thesubsection}{0.5em}{}
	\titleformat{\subsubsection}[runin]{\bfseries}{\thesubsubsection}{0.5em}{}[. ]
	\titleformat{\paragraph}[runin]{\bfseries\itshape}{\theparagraph}{0.5em}{\itshape}[. ]
	\titleformat{\subparagraph}[runin]{}{\thesubparagraph}{0.5em}{}[. ]
	
	\titlespacing*{\chapter}{0pt}{-1cm}{2.3ex plus .2ex}
	\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	
	\renewcommand{\tablename}{Tabla}
}
%
% ====================================================================
% Appendices Format
% ====================================================================
%
\newcommand{\AppendicesFormat}[2]{%
	
	% Título de capítulo: Apéndice
	\addcontentsline{toc}{chapter}{Apéndice} % Agregar contenido a la tabla de contenidos
	
	\setcounter{secnumdepth}{5}
	
	\titleformat{\chapter}			% comand: \part, chapter, \section, etc
	{\normalfont\filcenter\bfseries}{\appendixname\hspace{2pt}\thechapter .}{0.5em}{}
	
	\titleformat{\section}{\bfseries}{\thesection}{0.5em}{}
	\titleformat{\subsection}{\bfseries\itshape}{\thesubsection}{0.5em}{}
	\titleformat{\subsubsection}[runin]{\bfseries}{\thesubsubsection}{0.5em}{}[. ]
	\titleformat{\paragraph}[runin]{\bfseries\itshape}{\theparagraph}{0.5em}{\itshape}[. ]
	\titleformat{\subparagraph}[runin]{}{\thesubparagraph}{0.5em}{}[. ]
	
	\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2ex plus .2ex}
	\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	
	\renewcommand{\figurename}{Figura}
	\renewcommand{\tablename}{Tabla}
	\renewcommand{\appendixname}{Apéndice}
	%
	\begin{appendices}
		%
		\chapter*{Apéndice}
		\vspace{-5mm}
		\renewcommand{\thechapter}{\arabic{chapter}}
		{\let\clearpage\relax #1}
		#2
	\end{appendices}
}
%
% ====================================================================
% Caption Notra UTPL: Inclusión de fuente y elaboración
% ====================================================================
\newcommand{\NotaCaptionUTPL}[1]{%
	\vspace{5pt}
	\caption*{\textit{Nota:} \normalfont{#1}}%
}
%
% ====================================================================
% Página: Bibliografía
% ====================================================================
%
\newcommand{\paginaBibliografia}{%
	\newpage
	\titleformat{\chapter}[hang]{}{}{}{\filcenter\bfseries}
	\titlespacing{\chapter}{0pt}{0pt}{4ex}
	\renewcommand{\bibname}{Referencias}
	%
	\printbibliography 
	\addcontentsline{toc}{chapter}{Referencias} % Addition of the bibliography in the table of contents
}



