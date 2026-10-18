\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diretrizes}[2015/02/02]

% Repassa os parâmetros ao abntex2
\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{abntex2}
}

\PassOptionsToClass{%
    12pt,
    openright,
    a4paper,
    sumario=abnt-6027-2012,
    chapter=TITLE,
    section=TITLE,
    brazil,
    }{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian,hyperpageref]{backref}
\RequirePackage{makeidx}
\RequirePackage{chngcntr}

\usepackage{setspace}
\usepackage{caption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CONFIGURAÇÕES GERAIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}
\renewcommand{\backref}{}
\renewcommand*{\backrefalt}[4]{%
    \ifcase #1
        Nenhuma cita\c{c}\~ao no texto.
    \or
        Citado na p\'agina #2.
    \else
        Citado #1 vezes nas p\'aginas #2.
    \fi
}

% Numeração sequencial (sem capítulo)
\counterwithout{equation}{chapter}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}

% Redefine títulos
\AtBeginDocument{%
	\addto\captionsbrazil{%
		\renewcommand{\bibname}{REFER\^ENCIAS}%
		\renewcommand{\listfigurename}{LISTA DE FIGURAS}%
		\renewcommand{\listtablename}{LISTA DE TABELAS}%
		\renewcommand{\pageautorefname}{p\'agina}%
		\renewcommand{\sectionautorefname}{SE{\c C}\~AO}%
		\renewcommand{\subsectionautorefname}{SUBSE{\c C}\~AO}%
		\renewcommand{\subsubsectionautorefname}{Subse{\c c}\~ao}%
		\renewcommand{\paragraphautorefname}{Subse{\c c}\~ao}%
	}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ESTILO DE ELEMENTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\ABNTEXchapterfont}{\large\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\large}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont\bfseries\MakeUppercase}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% Elementos textuais
\renewcommand{\textual}{%
	\setcounter{page}{16}
    \ifthenelse{\equal{\ABNTEXisarticle}{true}}{%
        \pagestyle{plain}
    }
    {%
		\pagestyle{simple}
        \aliaspagestyle{chapter}{abntchapfirst}
    }
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Elementos pós-textuais
\renewcommand{\postextual}{%
    \phantompart
    \renewcommand{\indexname}{\'Indice Remissivo}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMANDOS GERAIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\aspas}[1]{``{#1}''}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMANDOS DE DADOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\imprimirnomeautor}{}
\newcommand{\nomeautor}[1]{\renewcommand{\imprimirnomeautor}{#1}}

\providecommand{\imprimirtitulotb}{}
\newcommand{\titulotb}[1]{\renewcommand{\imprimirtitulotb}{#1}}

\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

\providecommand{\imprimirabreviatura}{}
\newcommand{\abreviatura}[1]{\renewcommand{\imprimirabreviatura}{#1}}

\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

\providecommand{\imprimirmodalidade}{}
\newcommand{\modalidade}[1]{\renewcommand{\imprimirmodalidade}{#1}}

\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

\providecommand{\imprimirgrau}{}
\newcommand{\grau}[1]{\renewcommand{\imprimirgrau}{#1}}

\providecommand{\imprimirlocalapresentacao}{}
\newcommand{\localapresentacao}[1]{\renewcommand{\imprimirlocalapresentacao}{#1}}

\providecommand{\imprimiranoapresentacao}{}
\newcommand{\anoapresentacao}[1]{\renewcommand{\imprimiranoapresentacao}{#1}}

\providecommand{\imprimirmesapresentacao}{}
\newcommand{\mesapresentacao}[1]{\renewcommand{\imprimirmesapresentacao}{#1}}

\providecommand{\imprimirdataapresentacao}{%
	\imprimirmesapresentacao{}~de~\imprimiranoapresentacao
}

\newcommand{\dataapresentacao}[1]{%
	\renewcommand{\imprimirdataapresentacao}{#1}%
}

\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

\providecommand{\imprimirdepartamentoorientador}{}
\newcommand{\departamentoorientador}[1]{\renewcommand{\imprimirdepartamentoorientador}{#1}}

\providecommand{\imprimirtitulacaoorientador}{}
\newcommand{\titulacaoorientador}[1]{\renewcommand{\imprimirtitulacaoorientador}{#1}}

\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

\providecommand{\imprimirdepartamentocoorientador}{}
\newcommand{\departamentocoorientador}[1]{\renewcommand{\imprimirdepartamentocoorientador}{#1}}

\providecommand{\imprimirtitulacaocoorientador}{}
\newcommand{\titulacaocoorientador}[1]{\renewcommand{\imprimirtitulacaocoorientador}{#1}}

\providecommand{\imprimirnmexamum}{}
\newcommand{\nmexamum}[1]{\renewcommand{\imprimirnmexamum}{#1}}

\providecommand{\imprimirinstexamum}{}
\newcommand{\instexamum}[1]{\renewcommand{\imprimirinstexamum}{#1}}

\providecommand{\imprimirdepartamentoexamum}{}
\newcommand{\departamentoexamum}[1]{\renewcommand{\imprimirdepartamentoexamum}{#1}}

\providecommand{\imprimirtitulacaoexamum}{}
\newcommand{\titulacaoexamum}[1]{\renewcommand{\imprimirtitulacaoexamum}{#1}}

\providecommand{\imprimirnomeexamdois}{}
\newcommand{\nomeexamdois}[1]{\renewcommand{\imprimirnomeexamdois}{#1}}

\providecommand{\imprimirinstexamdois}{}
\newcommand{\instexamdois}[1]{\renewcommand{\imprimirinstexamdois}{#1}}

\providecommand{\imprimirdepartamentoexamdois}{}
\newcommand{\departamentoexamdois}[1]{\renewcommand{\imprimirdepartamentoexamdois}{#1}}

\providecommand{\imprimirtitulacaoexamdois}{}
\newcommand{\titulacaoexamdois}[1]{\renewcommand{\imprimirtitulacaoexamdois}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OBJETOS FLUTUANTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\fonte}[1]{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

\renewcommand{\nota}[1]{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PARÁGRAFOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{1.5cm}
\setlength{\parskip}{0.2cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMÁRIO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand*{\cftsectionfont}{\normalfont\bfseries}
\renewcommand*{\cftpartfont}{\normalfont}
\renewcommand*{\cftsubsectionfont}{\normalfont}
\renewcommand*{\cftsubsubsectionfont}{\normalfont}

\cftsetindents{section}{0pt}{20pt}
\cftsetindents{subsection}{0pt}{32pt}
\cftsetindents{subsubsection}{0pt}{42pt}

\newcommand{\sumario}
{	
		\setlength\cftpartnumwidth{\cftparagraphnumwidth}
		\setlength\cftchapternumwidth{\cftparagraphnumwidth}
		\setlength\cftsectionnumwidth{\cftparagraphnumwidth}
		\setlength\cftsubsectionnumwidth{\cftparagraphnumwidth}
		\setlength\cftsubsubsectionnumwidth{\cftparagraphnumwidth}
		\setlength\cftsectionindent{0pt}
		\setlength\cftsubsectionindent{0pt}
		\setlength\cftsubsubsectionindent{0pt}

		\thispagestyle{empty}
        \setlength{\baselineskip}{-2\baselineskip}
        \begin{center}
                \large\textbf{SUM\'ARIO} \\ [1.5\baselineskip]
        \end{center}
        \@starttoc{toc}
        \cleardoublepage
        \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEDICATÓRIA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{em}
        \begin{minipage}{.5\textwidth}
            \begin{OnehalfSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}	
{%       
		\end{OnehalfSpacing}
        \end{minipage}
        \end{em}
    \end{flushright}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EPIGRAFE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{OnehalfSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{OnehalfSpacing}
        \end{minipage}
    \end{flushright}
}

\newenvironment{autorepigrafe}[1][]
{%
    \vspace*{-1,5cm}
		\begin{flushright}
            \begin{OnehalfSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{OnehalfSpacing}
		   \end{flushright}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{agradecimento}{
    \newpage
    \thispagestyle{empty}
    \normalsize

    \begin{center}
	     \large\textbf{AGRADECIMENTOS}
    \end{center}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{RESUMO}{
    \newpage
    \thispagestyle{empty}
    \normalsize

    \begin{center}
	    \large\textbf{RESUMO}
    \end{center}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{ABSTRACT}{
	\newpage
    \thispagestyle{empty}
    \normalsize

    \begin{center}
	     \large\textbf{ABSTRACT}
    \end{center}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FORMATAÇÃO DAS PÁGINAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{1.5 cm}
\setlength{\parskip}{0.5 cm}

\setlength{\beforechapskip}{0 cm}
\setlength{\afterchapskip}{1.0 cm}

\captionsetup{justification=centering, labelfont=bf, textfont=bf, font=footnotesize, singlelinecheck=false, tableposition=top, figureposition=top}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FORMATAÇÃO DAS REFERÊNCIAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\backreflastsep}{, }
\renewcommand*{\backreftwosep}{, }
\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{%
  \ifcase #1 %
   \relax %
  \or
   \relax %
  \else
   \relax %
  \fi%
}