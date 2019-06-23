%%
%% This is file `abst5lab.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% abst5lab.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from abst5lab.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file abst5lab.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% File: abst5lab.dtx
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{abst5lab}
  [2000/10/19 v0.5]
\newif\if@oldstyle \@oldstyletrue
\DeclareOption{a4paper}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{a4j}{%
  \PassOptionsToClass{a4paper}{jarticle}}
\DeclareOption{a4p}{%
  \PassOptionsToClass{a4paper}{jarticle}}
\DeclareOption{10pt}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{11pt}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{12pt}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{oneside}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{twoside}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{leqno}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{fleqn}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{draft}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{final}{%
  \PassOptionsToClass{\CurrentOption}{jarticle}}
\DeclareOption{oldstyle}{\@oldstyletrue}
\DeclareOption{newstyle}{\@oldstylefalse}
\DeclareOption*{%
  \ClassWarning{abst5lab}{Option `\CurrentOption' is not supported.}}
\PassOptionsToClass{a4paper,11pt,twoside,twocolumn,notitlepage,final}{jarticle}
\ProcessOptions\relax
\LoadClass{jarticle}
\if@oldstyle
  \def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{%
         \prepartname\thepart\postpartname\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\parindent\z@\raggedright
     \interlinepenalty\@M\reset@font
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries\prepartname\thepart\postpartname
       \par\nobreak
     \fi
     \huge\bfseries#2\par}%
    \nobreak\vskip3ex\@afterheading}
  \renewcommand{\section}{\@startsection{section}{1}{\z@}%
     {3.5ex \@plus 1ex \@minus .2ex}%
     {2.3ex \@plus .2ex}%
     {\reset@font\Large\bfseries}}
  \renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
     {3.25ex \@plus 1ex \@minus .2ex}%
     {1.5ex \@plus .2ex}%
     {\reset@font\large\bfseries}}
  \renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
     {3.25ex \@plus 1ex \@minus .2ex}%
     {1.5ex \@plus .2ex}%
     {\reset@font\normalsize\bfseries}}
  \renewcommand{\subparagraph}{\@startsection{subparagraph}{4}{\parindent}%
     {3.25ex \@plus 1ex \@minus .2ex}%
     {-1em}%
     {\reset@font\normalsize\bfseries}}
  \if@twoside
    \def\ps@headings{\let\ps@jpl@in\ps@headnombre
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil{\slshape\leftmark}}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
      \def\sectionmark##1{\markboth{\MakeUppercase{%
         \ifnum \c@secnumdepth >\z@ \thesection\hskip1em\fi
         ##1}}{}}%
      \def\subsectionmark##1{\markright{%
         \ifnum \c@secnumdepth >\@ne \thesubsection\hskip1em\fi
         ##1}}%
    }
  \else % if not twoside
    \def\ps@headings{\let\ps@jpl@in\ps@headnombre
      \let\@oddfoot\@empty
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\sectionmark##1{\markright{\MakeUppercase{%
       \ifnum \c@secnumdepth >\m@ne \thesection\hskip1em\fi
       ##1}}}%
    }
  \fi % if twoside
  \def\ps@myheadings{\let\ps@jpl@in\ps@plain%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil{\slshape\leftmark}}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
  }
  \ifcase\@ptsize % if 10pt
    \setlength\parindent{15\p@}
    \setlength\leftmargini{25\p@}
    \setlength\leftmarginii{22\p@}
    \setlength\leftmarginiii{18.7\p@}
    \setlength\leftmarginiv{17\p@}
    \setlength\leftmarginv{10\p@}
    \setlength\leftmarginvi{10\p@}
    \setlength\labelsep{5\p@}
  \or % if 11pt
    \setlength\parindent{17\p@}
    \setlength\partopsep{3\p@ \@plus\p@ \@minus2\p@}
    \setlength\leftmargini{2.5em}
    \setlength\leftmarginii{2.2em}
    \setlength\leftmarginiii{1.87em}
    \setlength\leftmarginiv{1.7em}
    \setlength\leftmarginv{1em}
    \setlength\leftmarginvi{1em}
    \setlength\labelsep{.5em}
  \or % if 12pt
    \setlength\floatsep{14\p@ \@plus2\p@ \@minus4\p@}
    \setlength\parindent{1.5em}
    \setlength\leftmargini{2.5em}
    \setlength\leftmarginii{2.2em}
    \setlength\leftmarginiii{1.87em}
    \setlength\leftmarginiv{1.7em}
    \setlength\leftmarginv{1em}
    \setlength\leftmarginvi{1em}
    \setlength\labelsep{.5em}
  \fi % ifcase \@ptsize
  \if@twocolumn
    \setlength\leftmargini{2em}
    \setlength\leftmarginv{.5em}
    \setlength\leftmarginvi{.5em}
  \fi % if twocolumn
  \setlength\leftmargin{\leftmargini}
  \setlength\labelwidth{\leftmargini}
  \addtolength\labelwidth{-\labelsep}
\fi % if oldstyle
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
   {3.5ex \@plus 1ex \@minus .2ex}%
   {2.3ex \@plus .2ex}%
   {\reset@font\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
   {3.25ex \@plus 1ex \@minus .2ex}%
   {1.5ex \@plus .2ex}%
   {\reset@font\normalsize\bfseries}}
\newenvironment{references}%
   {\section*{\refname}%
    \list{}{\itemsep\z@ \itemindent-1.5em%
            \listparindent\itemindent \leftmargin\z@ \topsep-20\p@
            \rightmargin\leftmargin \advance\leftmargin 1.5em}\item[]}%
   {\endlist}
\let\br\references \let\er\endreferences
\def\etitle#1{\gdef\@etitle{#1}}
\def\@etitle{\@latex@error{No \noexpand\etitle given}\@ehc}
\def\eauthor#1{\gdef\@eauthor{#1}}
\def\@eauthor{\@latex@warning@no@line{No \noexpand\eauthor given}}
\def\affil#1{\gdef\@affil{#1}}
\def\@affil{\@latex@warning@no@line{No \noexpand\affil given}}
\def\eaffil#1{\gdef\@eaffil{#1}}
\def\@eaffil{\@latex@warning@no@line{No \noexpand\eaffil given}}
\renewcommand{\maketitle}{\par
  \begingroup
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox{$\m@th^{\@thefnmark}$}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
       \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne \@maketitle
      \else \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
     \thispagestyle{jpl@in}\@thanks
 \endgroup
 \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@eauthor\@empty
  \global\let\@affil\@empty
  \global\let\@eaffil\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@etitle\@empty
  \global\let\title\relax
  \global\let\etitle\relax
  \global\let\author\relax
  \global\let\eauthor\relax
  \global\let\affil\relax
  \global\let\eaffil\relax
  \global\let\date\relax
  \global\let\and\relax
  }
  \def\@maketitle{%
  \newpage\null
  \let\footnote\thanks
  \vspace*{-4mm}%
  \newdimen\@titlemargin
  \@titlemargin\z@
  \def\@@title{%
    {\reset@font\LARGE\bfseries \@title \par}%
    {\reset@font\Large\@etitle \par}}%
  \@tempdima\textwidth
  \advance\@tempdima-2\@titlemargin
  \setbox\@tempboxa\hbox{%
    \begin{tabular}{@{}c@{}}%
      \reset@font\LARGE\bfseries \@title\\
      \reset@font\Large \@etitle
    \end{tabular}}%
  \ifdim\wd\@tempboxa>\@tempdima
    \@tempdima\textwidth
    \advance\@tempdima-\@titlemargin
    \ifdim\wd\@tempboxa<\@tempdima
      \@tempdimb\@tempdima
      \advance\@tempdimb-\wd\@tempboxa
      \divide\@tempdimb\tw@
      \advance\@titlemargin-\@tempdimb
    \fi
    \hspace*{\@titlemargin}%
    \parbox{\@tempdima}{%
      \begin{center}%
        \@@title
      \end{center}}%
  \else
    \begin{center}%
      \@@title
    \end{center}%
  \fi
  \vspace{-6mm}%
  \vskip 0em%
  \begin{center}%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vspace{-1mm}%
  \end{center}
  \vspace{-9mm}
  \vskip 0em%
  \begin{center}%
    {\lineskip .5em%
      \begin{tabular}[t]{c}%
        \large\@affil
      \end{tabular}\par}%
  \end{center}}
\setcounter{topnumber}   {5}
\setcounter{bottomnumber}{5}
\setcounter{totalnumber} {10}
\setcounter{dbltopnumber}{2}
\renewcommand{\topfraction}         {.8}
\renewcommand{\bottomfraction}      {.8}
\renewcommand{\textfraction}        {.1}
\renewcommand{\floatpagefraction}   {.5}
\renewcommand{\dbltopfraction}      {.7}
\renewcommand{\dblfloatpagefraction}{.5}
\setlength\headheight{\z@}
\setlength\headsep   {\z@}
\setlength\topskip   {10\p@}% implicitly defined in the kernels(2.09)
\setlength\footskip  {11mm}
\setlength\maxdepth  {4\p@}%  implicitly defined in the kernels(2.09)
\setlength\textwidth       {181mm}
\setlength\textheight      {261mm}
\setlength\topmargin       {-10mm}
\setlength\oddsidemargin   {-10mm}
\setlength\evensidemargin  {\paperwidth}
\addtolength\evensidemargin{-2in}
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\oddsidemargin}
\setlength\marginparwidth  {48\p@}
\setlength\floatsep    {3mm \@plus 20mm \@minus 1mm}
\setlength\textfloatsep{3mm \@plus 20mm \@minus 1mm}
\setlength\intextsep   {3mm \@plus 20mm \@minus 1mm}
\setlength\columnsep{1.9\Cwd}
\setlength\parindent{1\Cwd}
\endinput
%%
%% End of file `abst5lab.cls'.
