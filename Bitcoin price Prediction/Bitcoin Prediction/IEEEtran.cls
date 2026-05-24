%%
%% IEEEtran.cls - Single Column Version
%% Modified for single-column conference format
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IEEEtran}[2024/05/24 V1.0 Single Column by Modified]

\DeclareOption{conference}{\def\@IEEEtranmode{conference}}
\DeclareOption{journal}{\def\@IEEEtranmode{journal}}
\DeclareOption{peerreview}{\def\@IEEEtranmode{peerreview}}
\DeclareOption{peerreviewca}{\def\@IEEEtranmode{peerreviewca}}
\DeclareOption{9pt}{}
\DeclareOption{10pt}{}
\DeclareOption{11pt}{}
\DeclareOption{12pt}{}
\DeclareOption{letterpaper}{}
\DeclareOption{a4paper}{}
\DeclareOption{oneside}{}
\DeclareOption{twoside}{}
\DeclareOption{onecolumn}{}
\DeclareOption{twocolumn}{}
\DeclareOption{draft}{}
\DeclareOption{final}{}
\ProcessOptions\relax

%% SINGLE COLUMN - Changed from twocolumn to onecolumn
\LoadClass[12pt,onecolumn]{article}

\RequirePackage{geometry}
\geometry{letterpaper, left=1in, right=1in, top=1in, bottom=1in}

\columnsep 0in
\parindent 1.5em
\parskip 0.5em plus 0.2em minus 0.1em
\linespread{1.5}

\def\IEEEoverridecommandlockouts{}
\def\IEEEauthorblockN#1{\textbf{#1}}
\def\IEEEauthorblockA#1{#1}

%% Title formatting - single column centered
\def\maketitle{
    \begin{center}
        {\LARGE\bfseries\@title\par}
        \vspace{1.5em}
        {\large\@author\par}
        \vspace{2em}
    \end{center}
}

%% Abstract - single column block
\renewenvironment{abstract}{
    \begin{center}
    \begin{minipage}{0.85\textwidth}
    \small
    \textbf{Abstract---}
}{
    \end{minipage}
    \end{center}
    \vspace{1.5em}
}

%% Keywords
\def\IEEEkeywords#1{
    \begin{center}
    \begin{minipage}{0.85\textwidth}
    \small
    \textbf{Index Terms---}#1
    \end{minipage}
    \end{center}
    \vspace{1.5em}
}

%% Section formatting
\renewcommand\section{\@startsection{section}{1}{\z@}
    {-3.5ex plus -1ex minus -.2ex}
    {2.3ex plus .2ex}
    {\normalfont\Large\bfseries}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}
    {-3.25ex plus -1ex minus -.2ex}
    {1.5ex plus .2ex}
    {\normalfont\large\bfseries}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}
    {-3.25ex plus -1ex minus -.2ex}
    {1.5ex plus .2ex}
    {\normalfont\normalsize\bfseries}}

%% Bibliography
\def\thebibliography#1{
    \section*{References}
    \list{\@biblabel{\@arabic\c@enumiv}}{%
        \settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \@openbib@code
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \sfcode`\.=1000\relax
}
\let\endthebibliography=\endlist

%% Page style
\pagestyle{plain}
\pagenumbering{arabic}