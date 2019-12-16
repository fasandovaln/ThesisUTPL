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
%% Version 1.2.1
%% Date: 016/12/2019
%% Changes:
%% - Cambio de numeración de las primeras páginas a números romanos en ``minúsculas''
%% - Eminiar la cursiva del título en las subsubsection y paragraph. 
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
%
% Estilo de la Bibliografía
\newcommand{\EstiloBibliografia}{APA}
%
\DeclareOption{IEEE}{%
	\renewcommand{\EstiloBibliografia}{IEEE}
}

\ProcessOptions\relax
%
% ====================================================================
% Estilo base
% ====================================================================
%
% Based on Book class
\LoadClass[a4paper,11pt, oneside]{book} 
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
%\RequirePackage[spanglish]{babel}
\RequirePackage[spanish,english]{babel}

% urw-arial – URW Arial font pack for use with LATEX
\RequirePackage[scaled]{helvet}
%\RequirePachelkage[scaled]{uarial}
\renewcommand{\familydefault}{\sfdefault}

% Soport math simbols-fonts.
\RequirePackage{amsmath,amssymb,amsfonts,latexsym}

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

% fancyhdr - Page layout 
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead{}
\fancyfoot[C]{\thepage}

% caption - The caption package provides many ways to customise the captions in
%           floating environments such figure and table
\RequirePackage{caption}
\captionsetup[figure]{font={normalfont,singlespacing},labelfont=normalfont,justification=raggedright,singlelinecheck=false, position=below, format=hang, skip=5pt}
\captionsetup[table]{font={normalfont,singlespacing},labelfont=normalfont,justification=raggedright,singlelinecheck=false, position=above, format=hang, skip=3pt}
%
%%- Bibliografia y referencias -%%
\ifthenelse{\equal{\EstiloBibliografia}{APA}}{%
	%  natbib - pack­age that im­ple­ments both au­thor-year and num­bered ref­er­ences
	\RequirePackage{natbib}
}{}%
%
% Estilo de Bibliografia 
	\ifthenelse{\equal{\EstiloBibliografia}{APA}}{%
	\bibliographystyle{apalike}}
	{\bibliographystyle{IEEEtran}}
% 
% ====================================================================
% Diseño de página 
% ====================================================================
%
%%- Tamaño de página -%%
\setpapersize{A4}
%%- Márgenes -%% 
\setmarginsrb{3cm}		% margen izquierdo
{3cm}					% margen superior
{2cm}					% margen derecho	
{2cm}					% margen inferior 
{0pt}					% altura de encabezados 
{0cm}					% espacio entre el texto y los encabezados
{0pt}					% altura del pie de página
{1.5cm}					% espacio entre el texto y pie de página
%
%%- Interlineado del documento -%%
\def\mystretch{1.5}
\def\baselinestretch{\mystretch}
%
%%- Sangría de los párrafos del documento -%%
\setlength{\parindent}{0pt}
%
%%- Espacio entre 2 párrafos -%%
%\setlength{\parskip}{12pt} % 12pt 
%
%
% ====================================================================
% Introducción de información básica
% ====================================================================
%
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

\newcommand{\utpl@directorNombres}{}
\newcommand{\directorNombres}[1]{\renewcommand{\utpl@directorNombres}{#1}}

\newcommand{\utpl@directorApellidos}{}
\newcommand{\directorApellidos}[1]{\renewcommand{\utpl@directorApellidos}{#1}}

\newcommand{\utpl@directorTitulo}{}
\newcommand{\directorTitulo}[1]{\renewcommand{\utpl@directorTitulo}{#1}}

\newcommand{\utpl@directorTituloAbv}{}
\newcommand{\directorTituloAbv}[1]{\renewcommand{\utpl@directorTituloAbv}{#1}}

\newcommand{\utpl@directorGenero}{}
\newcommand{\directorGenero}[1]{\renewcommand{\utpl@directorGenero}{#1}}

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

\newcommand{\utpl@mes}{}
\newcommand{\mes}[1]{\renewcommand{\utpl@mes}{#1}}

\newcommand{\utpl@ano}{}
\newcommand{\ano}[1]{\renewcommand{\utpl@ano}{#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ====================================================================
% Página: Caratula
% ====================================================================
%
\newcommand{\paginaCaratula}{%
\begin{titlepage}
	
	\setmarginsrb{30mm}{30mm}{30mm}{30mm}{0pt}{0mm}{0pt}{0mm}
%	\addcontentsline{toc}{chapter}{PORTADA} % Agregar contenido a la tabla de contenidos
	
	\fontfamily{ptm}
	\begin{center}	
		\Large
		
		\includegraphics[width=0.18\textwidth]{FIGURES/utpl_escudo_color} \\
		
		{\LARGE \textbf{UNIVERSIDAD TÉCNICA PARTICULAR DE LOJA}} \\
		\vspace{-0.2cm}
		\textit{La Universidad Católica de Loja} \\
		\vspace{1cm}
		
		{\LARGE \textbf{ÁREA \utpl@area}} \\
		\vspace{1cm}
		TÍTULO DE \utpl@tituloObtenido \\
		\vspace{0.5cm}
		\textbf{\utpl@tema} \\
		\vspace{0.5cm}
		\begin{flushright}
			TRABAJO DE TITULACIÓN. \textcolor{white}{\hspace{1cm}}  \\
		\end{flushright}
		\vspace{0.5cm}
		\begin{flushleft}
			\ifthenelse{\equal{\CantAutores}{unAutor}}%
				{\ifthenelse{\equal{\utpl@autorGeneroI}{m}}{\textbf{AUTOR:}}{\textbf{AUTORA:}}}%
				{\textbf{AUTORES:}} %
			\ifthenelse{\equal{\CantAutores}{unAutor}}%
				{\utpl@autorApellidosI, \utpl@autorNombresI \\}{}%
			\ifthenelse{\equal{\CantAutores}{dosAutores}}%	
				{\par \hspace{1cm} \utpl@autorApellidosI, \utpl@autorNombresI \\ \hspace{1cm} \utpl@autorApellidosII, \utpl@autorNombresII \\}{}%
			\ifthenelse{\equal{\CantAutores}{tresAutores}}%	
				{\par \hspace{1cm} \utpl@autorApellidosI, \utpl@autorNombresI \\ %
					  \hspace{1cm} \utpl@autorApellidosII, \utpl@autorNombresII \\ %
					  \hspace{1cm} \utpl@autorApellidosIII, \utpl@autorNombresIII \\}{}%
			\ifthenelse{\equal{\utpl@directorGenero}{m}}{\textbf{DIRECTOR:}}{\textbf{DIRECTORA:}} \utpl@directorApellidos, \utpl@directorNombres, \utpl@directorTituloAbv \\
		\end{flushleft}
		\vspace{1cm}
		
		\utpl@ciudad \, - \, \utpl@pais \\
		\utpl@ano	
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
	\newcommand{\aprobacionTitleText}{\textbf{APROBACIÓN} \ifthenelse{\equal{\utpl@directorGenero}{m}}{\textbf{DEL DIRECTOR}}{\textbf{DE LA DIRECTORA}} \textbf{DEL TRABAJO DE TITULACIÓN}}
	% Agregar contenido a la tabla de contenidos
	\begin{center}
		\aprobacionTitleText \\
	\end{center}
	\ifthenelse{\equal{\utpl@directorGenero}{m}}%
		{\addcontentsline{toc}{chapter}{APROBACIÓN DEL DIRECTOR DEL TRABAJO DE TITULACIÓN}}%
		{\addcontentsline{toc}{chapter}{APROBACIÓN DE LA DIRECTORA DEL TRABAJO DE TITULACIÓN}}% 
	\vspace{1cm}
	
	\large
	\utpl@directorTitulo. \\
	\utpl@directorNombres \, \utpl@directorApellidos. \\
	\textbf{DOCENTE DE LA TITULACIÓN}
	\par 
	\vspace{1.5cm}
	De mi consideración: 
	\par
	\vspace{1.5cm}
	El presente trabajo de titulación \textbf{``\utpl@tema''} \, realizado por %
	\ifthenelse{\equal{\CantAutores}{unAutor}}{\utpl@autorApellidosI \, \utpl@autorNombresI}{}%
	\ifthenelse{\equal{\CantAutores}{dosAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI \, y \utpl@autorApellidosII \, \utpl@autorNombresII}{}%
	\ifthenelse{\equal{\CantAutores}{tresAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI, \utpl@autorApellidosII \, \utpl@autorNombresII \, y \utpl@autorApellidosIII \, \utpl@autorNombresIII}{}%
	, ha sido orientado y revisado durante su ejecución, por cuanto se aprueba la presentación del mismo. \\
	\par
	\vspace{1cm}
	Loja, \utpl@mes \, de \utpl@ano \\
	\par
	\vspace{1.5cm}
	f\mbox{)} \, ......................................
}%
%
% ====================================================================
% Página: Declaración de Autoría y Cesión de Derechos
% ====================================================================
%
\newcommand{\paginaAutoria}{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{DECLARACIÓN DE AUTORÍA Y CESIÓN DE DERECHOS} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{DECLARACIÓN DE AUTORÍA Y CESIÓN DE DERECHOS} \\
	\end{center}
	\vspace{1.5cm}	
	
	\ifthenelse{\equal{\CantAutores}{unAutor}}{%
		``Yo \textit{\utpl@autorApellidosI \, \utpl@autorNombresI} \, declaro ser \ifthenelse{\equal{\utpl@autorGeneroI}{m}}{autor}{autora} \, del presente trabajo de titulación: \textbf{\utpl@tema}, de la Titulación de \textit{\utpl@titulacion}, siendo \textit{\utpl@directorNombres \, \utpl@directorApellidos} \ \ifthenelse{\equal{\utpl@directorGenero}{m}}{director}{directora} del presente trabajo; y eximo expresamente a la Universidad Técnica Particular de Loja y a sus representantes legales de posibles reclamos o acciones legales. Además certifico que las ideas, conceptos, procedimientos y resultados vertidos en el presente trabajo investigativo, son de mi exclusiva responsabilidad. \\
		%
		Adicionalmente declaro conocer y aceptar la disposición del Art. 88 del Estatuto Orgánico de la Universidad Técnica Particular de Loja que en su parte pertinente textualmente dice: “Forman parte del patrimonio de la Universidad la propiedad intelectual de investigaciones, trabajos científicos o técnicos y tesis de grado o trabajos de titulación que se realicen con el apoyo financiero, académico o institucional (operativo) de la Universidad'' \\
		\linebreak
		\linebreak
		f. ...................................... \\
		Autor: \utpl@autorApellidosI \, \utpl@autorNombresI \\
		Cédula: \utpl@autorCedulaI
	}{%
		``Nosotros %
			\ifthenelse{\equal{\CantAutores}{dosAutores}}{\textit{\utpl@autorApellidosI \, \utpl@autorNombresI \, y \utpl@autorApellidosII \, \utpl@autorNombresII} \,}{}%
			\ifthenelse{\equal{\CantAutores}{tresAutores}}{\utpl@autorApellidosI \, \utpl@autorNombresI, \, \utpl@autorApellidosII \, \utpl@autorNombresII \, y \utpl@autorApellidosIII \, \utpl@autorNombresIII \,}{}%
		declaramos ser autores del presente trabajo de titulación: \textbf{\utpl@tema}, de la Titulación de \textit{\utpl@titulacion}, siendo \textit{\utpl@directorNombres \, \utpl@directorApellidos} \ \ifthenelse{\equal{\utpl@directorGenero}{m}}{director}{directora} del presente trabajo; y eximimos expresamente a la Universidad Técnica Particular de Loja y a sus representantes legales de posibles reclamos o acciones legales. Además certificamos que las ideas, conceptos, procedimientos y resultados vertidos en el presente trabajo investigativo, son de nuestra exclusiva responsabilidad. \\
		%
		Adicionalmente declaramos conocer y aceptar la disposición del Art. 88 del Estatuto Orgánico de la Universidad Técnica Particular de Loja que en su parte pertinente textualmente dice: “Forman parte del patrimonio de la Universidad la propiedad intelectual de investigaciones, trabajos científicos o técnicos y tesis de grado o trabajos de titulación que se realicen con el apoyo financiero, académico o institucional (operativo) de la Universidad'' \\
		%
		\ifthenelse{\equal{\CantAutores}{dosAutores}}{
			\linebreak
			\linebreak
			f. ...................................... \\
			Autor: \utpl@autorApellidosI \, \utpl@autorNombresI \\
			Cédula: \utpl@autorCedulaI \\
			%	
			\linebreak
			\linebreak
			f. ...................................... \\
			Autor: \utpl@autorApellidosII \, \utpl@autorNombresII \\
			Cédula: \utpl@autorCedulaII \\
		}{}%
		\ifthenelse{\equal{\CantAutores}{tresAutores}}{
			\linebreak 
			\linebreak
			f. ...................................... \\
			Autor: \utpl@autorApellidosI \, \utpl@autorNombresI \\
			Cédula: \utpl@autorCedulaIII \\
			%	
			\linebreak
			\linebreak
			f. ...................................... \\
			Autor: \utpl@autorApellidosII \, \utpl@autorNombresII \\
			Cédula: \utpl@autorCedulaII \\
			%	
			\linebreak
			\linebreak
			f. ...................................... \\
			Autor: \utpl@autorApellidosIII \, \utpl@autorNombresIII \\
			Cédula: \utpl@autorCedulaIII 
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
	\addcontentsline{toc}{chapter}{DEDICATORIA} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{DEDICATORIA} \\
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
	\addcontentsline{toc}{chapter}{AGRADECIMIENTO} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{AGRADECIMIENTO} \\
	\end{center}
	#1	
}%
%
% ====================================================================
% Página: Listas de Contenidos, Figuras, y Tablas
% ==================================================================== 
%
\newcommand{\paginaListas}{%

	\titleformat{\chapter}[hang]{\large\filcenter\scshape\bfseries}{}{0pt}{}
	\titlespacing{\chapter}{0pt}{*0}{*1}
	
	\renewcommand{\contentsname}{ÍNDICE DE CONTENIDOS}%
	\renewcommand{\listfigurename}{LISTA DE FIGURAS}%
	\renewcommand{\listtablename}{LISTA DE TABLAS}%

	\tableofcontents
	\addcontentsline{toc}{chapter}{ÍNDICE DE CONTENIDOS} 
	\listoffigures
	\addcontentsline{toc}{chapter}{LISTA DE FIGURAS} 
	\listoftables
	\addcontentsline{toc}{chapter}{LISTA DE TABLAS} 
}%
%
% ====================================================================
% Página: Resumen
% ====================================================================
%
\newcommand{\paginaResumen}[2]{%
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{RESUMEN} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{RESUMEN} \\
	\end{center}
	#1 \\
	\par
	\textbf{PALABRAS CLAVES:} #2 
	
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
	\addcontentsline{toc}{chapter}{ABSTRACT} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\textbf{ABSTRACT} \\
	\end{center}
	#1 \\
	\par
	\textbf{KEYWORDS:} #2 	
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
	% modificar formato de título para el capitulo
	\titleformat{\chapter}[hang]{}{}{}{\normalfont\filcenter\bfseries}
	\titleformat{\section}[hang]{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subsection}{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subsubsection}{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\paragraph}[runin]{\normalfont\scshape\bfseries}{}{0pt}{}
	\titleformat{\subparagraph}[runin]{\normalfont\scshape\bfseries}{}{0pt}{}
	
	\titlespacing{\chapter}{0pt}{0pt}{4ex}
	\titlespacing*{\subsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
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
%	\renewcommand{\thechapter}{\Roman{chapter}}
	
	\titleformat{\chapter}										% comand: \part, chapter, \section, etc
		[display]												% shape
		{\vfill\Large\filcenter\bfseries}								% format: format to be applied to the whole title-label and text  
		{\Large\MakeUppercase{\chaptertitlename} \thechapter}  	% label
		{1pc}													% sep: horizontal separation between label and title body and must be a length
		{}														% before-code: code preceding the title body
		[\vfill\clearpage]										% after-code: code following the title body

	\titleformat{\section}
	{\normalfont\large\bfseries}{\thesection .}{0.5em}{}
	\titleformat{\subsection}
	{\normalfont\large\bfseries}{\thesubsection .}{0.5em}{}
	\titleformat{\subsubsection}
	{\normalfont\large\bfseries}{\thesubsubsection .}{0.5em}{\itshape}
	\titleformat{\paragraph}[runin]
	{\normalfont\largek}{\theparagraph .}{0.5em}{\itshape}
	\titleformat{\subparagraph}[runin]
	{\normalfont\large\scshape}{\thesubparagraph .}{0.5em}{}
	
	\titlespacing*{\chapter}{0pt}{50pt}{40pt}
	\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	
	\renewcommand{\tablename}{Tabla}
}
%
% ====================================================================
% Chapters Format
% ====================================================================
%
\newcommand{\AppendicesFormat}{%
	
	% Título de capítulo: Anexos
	\newpage
	\addcontentsline{toc}{chapter}{ANEXOS} % Agregar contenido a la tabla de contenidos
	\begin{center}
		\vspace*{\fill}
			{\Large \textbf{ANEXOS}}
		\vspace*{\fill}	
	\end{center}
	\newpage

	\setcounter{secnumdepth}{5}
	%	\renewcommand{\thechapter}{\Roman{chapter}}
	
	\titleformat{\chapter}										% comand: \part, chapter, \section, etc
	{\normalfont\Large\bfseries}{\Large\MakeUppercase{\appendixname \hspace{1pt}  \thechapter .}}{0.5em}{}
	
	\titleformat{\section}
	{\normalfont\large\bfseries}{\thesection .}{0.5em}{}
	\titleformat{\subsection}
	{\normalfont\large\bfseries}{\thesubsection .}{0.5em}{}
	\titleformat{\subsubsection}
	{\normalfont\large\bfseries\itshape}{\thesubsubsection .}{0.5em}{}
	\titleformat{\paragraph}[runin]
	{\normalfont\large\itshape}{\theparagraph .}{0.5em}{}
	\titleformat{\subparagraph}[runin]
	{\normalfont\large\scshape}{\thesubparagraph .}{0.5em}{}
	
	\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{20pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph}{20pt}{3.25ex plus 1ex minus .2ex}{1em}
	
	\renewcommand{\figurename}{Figura}
	\renewcommand{\tablename}{Tabla}
	\renewcommand{\appendixname}{Anexo}
	%
}
%
% ====================================================================
% Caption Extra UTPL: Inclusión de fuente y elaboración
% ====================================================================
\newcommand{\FigExtraCaptionUTPL}[2]{
	\caption*{
		{\small %  Letra Arial 9 (tamaño menor al del titulo de la figura o tabla)
			Fuente: #1 \\ 
			Elaborado por: #2
		}
	}
}
%
% Caption extra UTPL for Longtable
\newcommand{\FigExtraCaptionUTPLLongtable}[2]{
	\caption*{
		{\small %  Letra Arial 9 (tamaño menor al del titulo de la figura o tabla)
			\hspace{-3px}Fuente: #1 \\ 
			Elaborado por: #2
		}
	}
}
%
% ====================================================================
% Página: Bibliografía
% ====================================================================
%
\newcommand{\paginaBibliografia}[1]{%
	\newpage
	\titleformat{\chapter}[hang]{}{}{}{\large\filcenter\bfseries}
	\titlespacing{\chapter}{0pt}{0pt}{4ex}
	\renewcommand{\bibname}{BIBLIOGRAFÍA}

	\nocite{*} % The "nocite" command can be used to print references that haven't been used in the document. The "*" option specifies that every reference should be printed
	#1
	\addcontentsline{toc}{chapter}{BIBLIOGRAFÍA} % Addition of the bibliography in the table of contents
}



