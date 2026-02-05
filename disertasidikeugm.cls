%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Filename: main.tex
%%%  ---
%%%  Template for Doctoral Dissertation at 
%%%  Doctoral Program in Computer Science, DIKE FMIPA UGM   		
%%%  Created using disertasidikeugm.cls
%%%  --- 
%%%  Developed by Hanif Rahmat
%%%	 Doctoral Program in Computer Science, DIKE FMIPA UGM
%%%  [hanifrahmat123@gmail.com]
%%%  Github repo: https://github.com/hanifrahmath
%%%  ---
%%%  Thanks to Canggih Puspo Wibowo [canggihpw@gmail.com] who wrote the original version of the template, and 
%%%  Dr.-Ing. Yohan Fajar Sidik [DTETI FT UGM] [yohanfajarsidik@ugm.ac.id] who further developed the template.
%%%  Github repo: https://github.com/Dr-Sidik/template_thesis_latex_dteti
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%======================================
%% Identification
%======================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{disertasidikeugm}[2026/02/05]

%======================================
%% Initial Code
%======================================
\RequirePackage[english,bahasa]{babel} % language
\RequirePackage{etoolbox}% conditional statement
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{times}% font
\RequirePackage[T1]{fontenc}% quotation
\RequirePackage{graphicx}
\RequirePackage{calc}%Simple arithmetic lib
\RequirePackage{pdfpages} %include pdf file in latex
%\RequirePackage{titlesec}

%======================================
%% Option Declaration
%======================================
\newtoggle{lang}
% Language
\DeclareOption{bahasa}{\toggletrue{lang}}
\DeclareOption{english}{\togglefalse{lang}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}  % pass any unknown option to the report class

%======================================
%% Option Execution
%======================================
\ExecuteOptions{bahasa} % set default degree and language
\ProcessOptions


%======================================
%% Class & Package Loading
%======================================
\LoadClass[12pt]{report}  % this class is based on the report class
\usepackage{geometry}% easy layouting
\usepackage{subcaption} % subfigure
\usepackage[figurewithin=none]{caption}
\usepackage{tocloft}% edit font toc
\usepackage{fancyhdr}% page number
\usepackage[cmex10]{amsmath}
\usepackage{amssymb}
\usepackage{apacite}
\usepackage{natbib}
\usepackage{rotating} 
\usepackage{booktabs}
\usepackage{multirow}
\usepackage{titlesec}
\usepackage{ragged2e}% text alignment
\usepackage{algorithm}
\usepackage{algcompatible}
\usepackage{algpseudocode}
\usepackage{listings}
\usepackage{color}
\usepackage{url}
\usepackage{ifthen}
\usepackage{forloop}
\usepackage{longtable}
\usepackage{enumitem}
\usepackage[labelsep=period]{caption} % use period as label separator
\usepackage[bookmarks=true,hidelinks,bookmarksnumbered]{hyperref}  
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{pgf-pie}
\usepackage{tabularx}
\usepackage{float}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}
\usetikzlibrary{arrows}
\newcommand{\doi}[1]{\href{https://doi.org/#1}{#1}}
\bibliographystyle{packages/myapacite}

\DeclareMathOperator{\softmax}{Softmax}

% Page break for equation
\allowdisplaybreaks

%======================================
%% Localise the Strings
%======================================
\iftoggle{lang}{
	% define new commands in bahasa
	\newcommand{\listappendixname}{DAFTAR LAMPIRAN}%
	\newcommand{\nomenclaturename}{DAFTAR SINGKATAN}%
	\newcommand{\acknowledgmentname}{HALAMAN PERSEMBAHAN}%
	\newcommand{\approvalpage}{HALAMAN PENGESAHAN}
	\newcommand{\statementname}{PERNYATAAN BEBAS PLAGIASI}
	\newcommand{\dedicationpage}{HALAMAN PERSEMBAHAN}
	\AtBeginDocument{% select the language
		\selectlanguage{bahasa}
	}
}{
	% define new commands in english
	\newcommand{\listappendixname}{LIST OF APPENDICES}%
	\newcommand{\nomenclaturename}{NOMENCLATURE AND ABBREVIATION}%
	\newcommand{\approvalpage}{ENDORSEMENT PAGE}
	\newcommand{\statementname}{STATEMENT}
	\newcommand{\dedicationpage}{PAGE OF DEDICATION}
	\AtBeginDocument{% select the language
		\selectlanguage{english}
	}
}

% redefine commands in babel bahasa
\addto\captionsbahasa{%
	\renewcommand{\prefacename}{KATA PENGANTAR}%
	\renewcommand{\contentsname}{DAFTAR ISI}%
	\renewcommand{\listfigurename}{DAFTAR GAMBAR}%
	\renewcommand{\listtablename}{DAFTAR TABEL}%
	\renewcommand{\abstractname}{INTISARI}%
	\renewcommand{\partname}{BAGIAN}%
	\renewcommand{\chaptername}{BAB}%
	\renewcommand{\appendixname}{LAMPIRAN}%
	\renewcommand{\refname}{DAFTAR PUSTAKA}%
	\renewcommand{\bibname}{DAFTAR PUSTAKA}%
	\renewcommand{\indexname}{Indek}%
	\renewcommand{\figurename}{Gambar}%
	\renewcommand{\tablename}{Tabel}%
	\renewcommand{\pagename}{Halaman}%
}

% redefine commands in babel english
\addto\captionsenglish{%
	\renewcommand{\prefacename}{PREFACE}%
	\renewcommand{\contentsname}{CONTENTS}%
	\renewcommand{\listfigurename}{LIST OF FIGURES}%
	\renewcommand{\listtablename}{LIST OF TABLES}%
	\renewcommand{\abstractname}{\emph{Abstract}}%
	\renewcommand{\partname}{PART}%
	\renewcommand{\chaptername}{CHAPTER}%
	\renewcommand{\appendixname}{APPENDIX}%
	\renewcommand{\refname}{REFERENCES}%
	\renewcommand{\bibname}{REFERENCES}%
	\renewcommand{\indexname}{Index}%
	\renewcommand{\figurename}{Figure}%
	\renewcommand{\tablename}{Table}%
	\renewcommand{\pagename}{Page}%
}

%======================================
%% General Page Layout
%======================================
\geometry{
	a4paper,
	papersize={21cm,29.7cm},
	top=2.54cm,
	left=3.54cm,
	right=2.54cm,
	bottom=2.54cm
}
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{6pt}
\setlength{\footskip}{1.5cm} 
\setlength{\topskip}{1ex}
\pgfplotsset{compat=1.16}

%======================================
%%  Information Setup
%======================================
% Author info
\renewcommand*{\author}[2]{
	\newcommand{\@authorName}{#1} 
	\newcommand{\@authorID}{#2}
}
% Dissertation info
\renewcommand*{\title}[1]{\renewcommand{\@title}{#1}}
\newcommand*{\titleeng}[1]{\newcommand{\@titleeng}{#1}}
% Exam info
\newcommand*{\degree}[1]{\newcommand{\@degree}{#1}}
\newcommand*{\program}[3]{
	\newcommand{\@program}{#1}
	\newcommand{\@programcoorName}{#2}
	\newcommand{\@programcoorNIP}{#3}
}
% Exam info
\newcommand*{\examdate}[1]{\newcommand{\@examdate}{#1}}
\newcommand*{\approvaldate}[1]{\newcommand{\@approvaldate}{#1}}
\newcommand*{\yearsubmit}[1]{\newcommand{\@yearsubmit}{#1}}
% Using array-like to dynamically store examiner & supervisor data
% First option keeps ID, second option keeps name(1) or nip(2)
% Examiners
\newcounter{exm}
\newcommand\addexaminer[2]{%
	\stepcounter{exm}%
	\csdef{exmname\theexm}{#1}
	\csdef{exmnip\theexm}{#2}
}
\newcommand\getexaminer[2]{%
	% if second option = 1, get name
	% if second option = 2, get nip
	\ifthenelse{\equal{\detokenize{#2}}{\detokenize{1}}}
	{\csuse{exmname#1}}
	{\csuse{exmnip#1}}
}
% Supervisors/Promotors info
\newcounter{spv}
\newcommand\addsupervisor[2]{%
	\stepcounter{spv}%
	\csdef{spvname\thespv}{#1}
	\csdef{spvnip\thespv}{#2}
}
\newcommand\getsupervisor[2]{%
	% if second option = 1, get name
	% if second option = 2, get nip
	\ifthenelse{\equal{\detokenize{#2}}{\detokenize{1}}}
	{\csuse{spvname#1}}
	{\csuse{spvnip#1}}
}

% Department info
\newcommand{\@university}{Universitas Gadjah Mada}
\newcommand{\@facultyIna}{Fakultas Matematika dan Ilmu Pengetahuan Alam}
\newcommand{\@facultyEng}{Faculty of Mathematics and Natural Sciences}
\newcommand{\@departmentIna}{Departemen Ilmu Komputer dan Elektronika}
\newcommand{\@departmentEng}{Department of Computer Science and Electronics}
\newcommand{\@graduateIna}{Program Studi Doktor Ilmu Komputer}
\newcommand{\@graduateEng}{Doctoral Program in Computer Science}
\newcommand{\@city}{Yogyakarta}

%======================================
%% Cover Page
%======================================
\newcommand{\printcover}[1]{
	\newgeometry{left=3.5cm,top=2.5cm,bottom=2.5cm,right=2.5cm}
	\titleformat*{\section}{\raggedright\normalfont\normalsize\bfseries}
	\thispagestyle{empty}%
	\setcounter{page}{1}
	\pagenumbering{roman}
	\begin{center}
		\begin{singlespacing}
			% Cover 1
			\fontsize{14pt}{16pt}\selectfont\textbf{\iftoggle{lang}{DISERTASI}{DISSERTATION}}\\
			\vspace{0.5cm}
			\MakeUppercase{\fontsize{14pt}{16pt}\selectfont\textbf{\@title}}\\
			\vspace{0.5cm}
			\MakeUppercase{\fontsize{14pt}{16pt}\selectfont\textbf{\@titleeng}}\\
			\vspace{1.5cm}
			\vfill
			\includegraphics[width=0.5\textwidth]{#1}
			\vfill
			\vspace{0.4em}
			\textbf{\@authorName \\ \@authorID \\}
			\vfill
			\vspace{0.4em}
			\textbf{
				\iftoggle{lang}{\MakeUppercase{\@graduateIna}}{\MakeUppercase{\@graduateEng}} \\ 
				\iftoggle{lang}{\MakeUppercase{\@facultyIna}}{\MakeUppercase{\@facultyEng}} \\ 
				\MakeUppercase{\@university} \\ 
				\MakeUppercase{\@city} \\ 
				\@yearsubmit	
			}
			% Cover 2
			\newpage
			\thispagestyle{empty}
			\fontsize{14pt}{16pt}\selectfont\textbf{\iftoggle{lang}{DISERTASI}{DISSERTATION}}\\
			\vspace{0.5cm}
			\MakeUppercase{\fontsize{14pt}{16pt}\selectfont\textbf{\@title}}\\
			\vspace{0.5cm}
			\MakeUppercase{\fontsize{14pt}{16pt}\selectfont\textbf{\@titleeng}}\\
			\vspace{0.5cm}
			\iftoggle{lang}
				{Disertasi untuk memperoleh derajat Doktor dalam Ilmu Komputer pada Universitas Gadjah Mada}
				{Dissertation submitted to obtain a Doctoral degree in Computer Science at Universitas Gadjah Mada}\\
			\vspace{1cm}
			\vfill
			\includegraphics[width=0.5\textwidth]{#1}
			\vfill
			\vspace{0.4em}
			\textbf{\@authorName \\ \@authorID \\}
			\vfill
			\vspace{0.4em}
			\textbf{
				\iftoggle{lang}{\MakeUppercase{\@graduateIna}}{\MakeUppercase{\@graduateEng}} \\ 
				\iftoggle{lang}{\MakeUppercase{\@facultyIna}}{\MakeUppercase{\@facultyEng}} \\ 
				\MakeUppercase{\@university} \\ 
				\MakeUppercase{\@city} \\ 
				\@yearsubmit	
			}
		\end{singlespacing}
	\end{center}
}

%======================================
%% Endorsement Page
%======================================
\newcommand{\printendorsementpdf}{
		%\chapter*{\approvalpage}
		\addtocounter{page}{1}
		\addcontentsline{toc}{chapter}{\approvalpage}
		\includepdf[page={1}]{contents/endorsement/endorsement.pdf}
		\addtocounter{page}{-1}
}
\newcommand{\printendorsement}{
	\chapter*{\approvalpage}
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	\begin{center}
		\begin{singlespacing}
			\fontsize{14pt}{16pt}\selectfont\textbf{\iftoggle{lang}{DISERTASI}{DISSERTATION}}\\
			\vspace{0.5cm}
			\MakeUppercase{\fontsize{14pt}{16pt}\selectfont\textbf{\@title}}\\
			\vspace{1cm}
			\@authorName \\
			\@authorID\\
			\vspace{0.5cm}
			% \iftoggle{lang}
			% 	{\@graduateIna}
			% 	{\@graduateEng} \\
			\iftoggle{lang}
				{\@departmentIna}
				{\@departmentEng} \\
			\iftoggle{lang}
				{\@facultyIna}
				{\@facultyEng} \\
			\@university\\
			\vspace{0.5cm}
			\iftoggle{lang}
				{Tanggal <<Tanggal>>}
				{Date <<Date>>} \\
			\vspace{1cm}
			\iftoggle{lang}
				{Telah disetujui}
				{Approved by} \\
			\iftoggle{lang}
				{Tim Promotor}
				{Supervision Team} \\
			\vspace{3cm}
			\textbf{\underline{\getsupervisor{1}{1}}}\\
			\iftoggle{lang}
				{Promotor}
				{Supervisor} \\
			\vspace{3cm}
			\textbf{\underline{\getsupervisor{2}{1}}}\\
			\iftoggle{lang}
				{Ko-promotor}
				{Co-supervisor} \\
		\end{singlespacing}			
	\end{center}
	\addcontentsline{toc}{chapter}{\approvalpage}
}

%======================================
%% Scanned JPG Endorsement Page
%======================================
\newcommand{\printendorsementjpg}[1]{
	\newpage
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	\begin{center}
	\vspace*{-4cm}
	\noindent\makebox[\textwidth]{\includegraphics[width=\paperwidth]{#1}}
	\end{center}
	\addcontentsline{toc}{chapter}{\approvalpage}
	\clearpage
}

%======================================
%% Dedication Page
%======================================
\newcommand{\chapterdedication}[1]{
	\newgeometry{top=2.54cm,bottom=2.54cm,left=3.54cm,right=2.54cm}
	\chapter*{\dedicationpage}%
	\input{#1}
	\addcontentsline{toc}{chapter}{\dedicationpage}
}

%======================================
%% Statement Page
%======================================
\newcommand{\chapterstatement}[1]{
	\newgeometry{right=2.54cm,left=3.54cm,top=2.54cm,bottom=2.54cm}
	\chapter*{\statementname}%
	\input{#1}
	\addcontentsline{toc}{chapter}{\statementname}
}

%======================================
%% Scanned JPG Statement Page
%======================================
\newcommand{\chapterstatementjpg}[1]{
	\newpage
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	\begin{center}
	\vspace*{-4cm}
	\noindent\makebox[\textwidth]{\includegraphics[width=\paperwidth]{#1}}		
	\end{center}
	\addcontentsline{toc}{chapter}{\statementname}
	\clearpage
}

%======================================
%% Preface
%======================================
\newcommand{\chapterpreface}[1]{
	\restoregeometry% Restore Geometry
	\chapter*{\prefacename}%
	\input{#1}
	\addcontentsline{toc}{chapter}{\prefacename}
}

%======================================
%% Nomenclature
%======================================
\newcommand{\chapternomenclature}[1]{
	\chapter*{\nomenclaturename}
	\input{#1}	
	\addcontentsline{toc}{chapter}{\nomenclaturename}
}

%======================================
%% Abstract
%======================================
\newcommand{\chapterabstract}[1]{
	\chapter*{ABSTRACT}
	\input{#1}
	\addcontentsline{toc}{chapter}{ABSTRACT}
}

%======================================
%% Intisari
%======================================
\newcommand{\chapterintisari}[1]{
	\chapter*{INTISARI}
	\input{#1}
	\addcontentsline{toc}{chapter}{INTISARI}	
}

%======================================
%% Table of Contents
%% List of Figures and Tables
%======================================
\setcounter{tocdepth}{3}
% dot length
\renewcommand{\cftdotsep}{1} %default: 4.5
% Put dots for chapter entries
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
% set font chapter
\renewcommand\cftchapfont{\mdseries}
\renewcommand\cftchappagefont{\mdseries}%


% Modified list entries in TOC, LOT, LOF
\setlength{\cftbeforechapskip}{0em} % no space between list
\renewcommand{\cftchappresnum}{\chaptername \space}
\renewcommand\cfttabpresnum{\tablename \space}
\renewcommand\cftfigpresnum{\figurename \space}
\AtBeginDocument{
	\addtolength\cftchapnumwidth{\widthof{\bfseries \chaptername }}
	\addtolength\cfttabnumwidth{\widthof{\bfseries \tablename }}
	\addtolength\cftfignumwidth{\widthof{\bfseries \figurename }}
}

% Adding entry to TOC
\newcommand{\thetoc}{
	\newpage
	\addcontentsline{toc}{chapter}{\contentsname}
}
% Adding entry to LOT
\newcommand{\thelot}{
	\newpage
	\addcontentsline{toc}{chapter}{\listtablename}
}
% Adding entry to LOF
\newcommand{\thelof}{
	\newpage
	\addcontentsline{toc}{chapter}{\listfigurename}
}
% Put title of TOC, LOF, and LOT in top-center page
\AtBeginDocument{
	\renewcommand{\cfttoctitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{16pt}\selectfont}
	\renewcommand{\cftaftertoctitle}{\hfill}
	\renewcommand{\cftlottitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{16pt}\selectfont}
	\renewcommand{\cftafterlottitle}{\hfill}
	\renewcommand{\cftloftitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{16pt}\selectfont}
	\renewcommand{\cftafterloftitle}{\hfill}
}

%======================================
%% Tables and Figures
%======================================
% Give padding in tabular environment
\renewcommand{\arraystretch}{1.2}

%======================================
%% Misc Styling
%======================================
%Source code style
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

\lstdefinestyle{mystyle}{ 
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\small,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}
\lstset{style=mystyle}

%======================================
%% Chapters and Sections
%======================================
% set page number style
\AtBeginDocument{
	\fancyhf{}
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\pagestyle{fancy}
	\setlength{\parindent}{1.25cm}
}
% depth of toc
\setcounter{secnumdepth}{3}
% set numbering style
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@Roman\c@chapter}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand\thesubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}

% set figure, table, and equation style
\@addtoreset {equation}{chapter}
\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@figure}
\renewcommand \thetable
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@table}

% Section style

\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titleformat*{\section}{\raggedright\normalfont\normalsize\bfseries}
\titleformat*{\subsection}{\raggedright\normalfont\normalsize\bfseries}
\titleformat*{\subsubsection}{\raggedright\normalfont\normalsize\bfseries}


% Starting the main matter	
\newcommand{\startmain}{
	\clearpage
	\setcounter{page}{1}
	\pagenumbering{arabic}
	\onehalfspacing
	\nopagebreak
	\setlength{\parindent}{1.25cm}
}
	

% Main chapter head styling
\renewcommand{\@makechapterhead}[1]{%   
	{\parindent \z@ \centering \bfseries
	\fontsize{14pt}{16pt}\selectfont
	\chaptername \space \thechapter
	\par\nobreak
	\MakeUppercase{#1}\par\nobreak
	\vskip 20\p@
}}

% Other chapter head styling
\renewcommand{\@makeschapterhead}[1]{%
	{\parindent \z@ \centering \bfseries
		\fontsize{14pt}{16pt}\selectfont
		\par\nobreak 
		 \MakeUppercase{#1}\par\nobreak 
		 \vskip 20\p@ 
}}

% References
\newcommand{\thereferences}{
	\addcontentsline{toc}{chapter}{\bibname}
	\singlespacing
	\nopagebreak
}

% Appendix
\newcommand{\chapterappendix}[1]{
	\newpage
	% Reset counter
	%\setcounter{chapter}{0}
	%\setcounter{section}{0}
	\setcounter{page}{1}
	% Makes all chapter name to L
	\renewcommand{\thechapter}{L}
	\renewcommand{\thepage}{L-\arabic{page}}
	\renewcommand \thesection {L.\@arabic\c@section}
	\renewcommand\thesubsection {L.\@arabic\c@section.\@arabic\c@subsection}
	
	% Add to TOC
    \addcontentsline{toc}{chapter}{LAMPIRAN}	
	%\addcontentsline{toc}{chapter}{\protect\setcounter{tocdepth}{1}\protect\appendixname}
	%\addcontentsline{toc}{chapter}{\protect\setcounter{tocdepth}{1}\protect\appendixname}
	%\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
	% Page number style
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	
	\fontsize{14pt}{16pt}\selectfont
	%\centering\MakeUppercase{\normalfont\bfseries \appendixname }\\
	\vspace{20pt}
	\fontsize{12}{2}\selectfont
	\onehalfspacing
	\input{#1}
}

\newcommand{\chapterappendixadd}[1]{
	\newpage

	% Makes all chapter name to L
	\renewcommand{\thechapter}{L}
	\renewcommand{\thepage}{L-\arabic{page}}
	\renewcommand \thesection {L.\@arabic\c@section}
	\renewcommand\thesubsection {L.\@arabic\c@section.\@arabic\c@subsection}
	
	% Add to TOC
	%\addcontentsline{toc}{chapter}{\protect\setcounter{tocdepth}{1}\protect\appendixname}
	%\addcontentsline{toc}{chapter}{\protect\setcounter{tocdepth}{1}\protect\chaptername}	
	%\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
	% Page number style
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	
	\fontsize{14pt}{16pt}\selectfont
	%\centering\MakeUppercase{\normalfont\bfseries \appendixname }\\
	\vspace{20pt}
	\fontsize{12}{2}\selectfont
	\onehalfspacing
	\input{#1}
}

\newcommand{\appendixtables}{
  \renewcommand{\thetable}{L.\arabic{table}}%
  \setcounter{table}{0}%
}

\newcommand{\appendixfigures}{
  \renewcommand{\thefigure}{L.\arabic{figure}} 
  \setcounter{figure}{0} 
}

%----------------
% List
%---------------

\setlist[enumerate,1]{leftmargin=2em, label=\arabic*., topsep=0pt, itemsep=0pt, partopsep=1ex, parsep=1ex}
\setlist[itemize,1]{align=parleft, left=0pt, label=•, itemsep=0pt, topsep=0pt, partopsep=1ex, parsep=1ex}

