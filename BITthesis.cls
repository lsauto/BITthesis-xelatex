%%
%% This is file `CASthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% CASthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright 2004-2006
%% CTEX.ORG and any individual authors listed elsewhere in this file.
%% 
%% This file was generated from file(s) of the CASthesis package project.
%% ----------------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%% 
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%% 
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
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{BITthesis} [2016/07/24 v0.0 BITthesis document class]
\newif\ifCAST@typeinfo \CAST@typeinfotrue
\DeclareOption{notypeinfo}{\CAST@typeinfofalse}
\newif\ifCAST@dvips \CAST@dvipsfalse
\DeclareOption{dvips}{\CAST@dvipstrue}
\DeclareOption{dvipdfm}{\CAST@dvipsfalse}
\DeclareOption{pdftex}{\CAST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}[2005/11/25]
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% add by lss, delete the : in fig
\usepackage[labelsep=space]{caption}
%% graphics packages
\RequirePackage{graphicx}
\usepackage[aboveskip = 0pt,belowskip=0pt, caption=false,font=footnotesize]{subfig}
%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
%% Using the Table
\usepackage{tabularx}
%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCAST@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=black,%
               citecolor=black,%
              plainpages=false,%
            pdfstartview=FitH}
\AtEndOfPackage{\makeatletter\input{BITthesis.cfg}\makeatother}
% \oddsidemargin 1.5 true cm
% \if@twoside
  % \evensidemargin 0 true cm
% \else
  % \evensidemargin 1.5 true cm
% \fi
% \textheight 21 true cm
% \textwidth 14.5 true cm
% \headheight 15pt
%% 页边距设置
\usepackage[top=3.5cm,bottom=2.5cm,left=2.7cm,right=2.7cm,headheight=0.5cm,headsep=0.5cm,footskip=0.7cm]{geometry}
\renewcommand{\baselinestretch}{1.4}
\parskip 0.5ex plus 0.25ex minus 0.25ex

%% 设置章节格式 
\CTEXsetup[number={\arabic{chapter}}]{chapter}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
% \bibliographystyle{plain}
\bibliographystyle{GBT7714-2005NLang-ANSI-LSS}%_  参考文献风格 added by wei.jianwen@gmail.com
\newcommand\CASTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CAST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CASTfiledate{#1}%
  \def\CASTfileversion{#2}%
  \def\CASTfileinfo{#3}}%
\expandafter\ifx\csname ver@BITthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_BITthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@BITthesis.cls\endcsname}
\fi
\expandafter\CAST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CAST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
  % \def\CAST@underline[#1]#2{%
  % \CTEXunderline{\hbox to #1{#2\hfill}}}
\def\CASTunderline{\@ifnextchar[\CAST@underline\CTEXunderline}
\newcommand\classification[1]{\def\CAST@value@classification{#1}}
\newcommand\confidential[1]{\def\CAST@value@confidential{#1}}
\newcommand\UDC[1]{\def\CAST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CAST@value@serialnumber{#1}}
\newcommand\school[1]{\def\CAST@value@school{#1}}
\newcommand\degree[1]{\def\CAST@value@degree{#1}}
\renewcommand\title[2][\CAST@value@title]{%
  \def\CAST@value@title{#2}
  \def\CAST@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CAST@value@author{#1}}
\newcommand\advisor[1]{\def\CAST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\CAST@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\CAST@value@major{#1}}
\newcommand\submitdate[1]{\def\CAST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CAST@value@defenddate{#1}}
\newcommand\institute[1]{\def\CAST@value@institute{#1}}
\newcommand\chairman[1]{\def\CAST@value@chairman{#1}}

\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}  
  \begin{center}
    \vspace*{60mm}
       {\heiti\zihao{-2} \CAST@value@title}
    \vskip 40mm
    {\heiti \zihao{-2} \CAST@value@author}
     \vskip 4mm
    {\songti \zihao{4} \CAST@value@defenddate}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
    \fi
    \cleardoublepage
  \fi
 
  \newpage
  \cleardoublepage
  \thispagestyle{empty}

%udc ltz
{
  {\heiti \zihao{5} \noindent \CAST@label@classification} {\zihao{5}\CAST@value@classification} \\ 
  {\heiti \zihao{5} \CAST@label@UDC}  {\zihao{5} \CAST@value@UDC} 
}
  
   \begin{center}
  
    \vskip \stretch{1}
       {\heiti\zihao{-2} \CAST@value@title}
    \vskip \stretch{1}

    % {\fangsong\zihao{4}}      
    % \def\tabcolsep{1pt}
    \def\arraystretch{0.9}

    {\heiti\zihao{-3}
     \begin{tabular}{lc}
      \CAST@label@author & \CASTunderline[130pt]{\CAST@value@author}
    \\
      \CAST@label@institute &  \CASTunderline[130pt]{\CAST@value@institute}
    \\
      \CAST@label@advisor &  \CASTunderline[130pt]{\CAST@value@advisor}
    \\  
      \CAST@label@chairman &   \CASTunderline[130pt]{\CAST@value@chairman}
    \\  
      \CAST@label@degree &    \CASTunderline[130pt]{\CAST@value@degree}
    \\  
      \CAST@label@major &     \CASTunderline[130pt]{\CAST@value@major}
    \\  
      \CAST@label@school &     \CASTunderline[130pt]{\CAST@value@school}
    \\  
      \CAST@label@defenddate &   \CASTunderline[130pt]{\CAST@value@defenddate}
    \end{tabular}}

  \end{center} 

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
    \fi
    \cleardoublepage
  \fi
}

\newcommand\englishtitle[1]{\def\CAST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CAST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\CAST@value@englishadvisor{#1}}
\newcommand\englishinstitute[1]{\def\CAST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\CAST@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\CAST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\CAST@value@englishmajor{#1}}
\newcommand\englishchairman[1]{\def\CAST@value@englishchairman{#1}}
\newcommand\englishschool[1]{\def\CAST@value@englishschool{#1}}

\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  
   \begin{center}
  
   \vspace*{2em}
  
   {\zihao{-2}\textbf{\CAST@value@englishtitle}}
  
   \vskip \stretch{1}

    \def\arraystretch{0.9}
   {\zihao{-3}
     \begin{tabular}{lc}
      \CAST@label@englishauthor & \CASTunderline[220pt]{\CAST@value@englishauthor}
    \\
      \CAST@label@englishinstitute &  \CASTunderline[220pt]{\CAST@value@englishinstitute}
    \\
      \CAST@label@englishadvisor &  \CASTunderline[220pt]{\CAST@value@englishadvisor}
    \\  
      \CAST@label@englishchairman &   \CASTunderline[220pt]{\CAST@value@englishchairman}
    \\  
      \CAST@label@englishdegree &    \CASTunderline[220pt]{\CAST@value@englishdegree}
    \\  
      \CAST@label@englishmajor &     \CASTunderline[220pt]{\CAST@value@englishmajor}
    \\  
      \CAST@label@englishschool &     \CASTunderline[220pt]{\CAST@value@englishschool}
    \\  
      \CAST@label@englishdate &   \CASTunderline[220pt]{\CAST@value@englishdate}
    \end{tabular}}

  \end{center} 

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%绘制树立排放的论文题目和学校名称
\newcommand\makeVerticalTitle{
 \cleardoublepage
 \thispagestyle{empty}
   % \vspace*{10mm}
   \begin{center}
   {
    \heiti\zihao{3}
   \begin{minipage}[c][\textheight]{1em}
   \baselineskip = 0.7\baselineskip
   % \begin{minipage}{1em}
        % \CAST@value@title
        % \vskip 30mm
        % \CAST@value@school
        \vfill
        \CAST@value@title
        % \vfill
        \vskip 30mm
        \CAST@value@school
        \vskip 60mm
   \end{minipage}
   }
   \end{center}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}
% 原创性声明
\newcommand\makeDeclareOriginal{%
  \cleardoublepage
  \thispagestyle{empty}
  \vspace*{3mm}
  \begin{center}
  %{\bf\zihao{3} \CAST@value@school}\\
  {\bf\zihao{3} \CAST@label@original}
  \end{center}
  \vskip 10pt
  {\zihao{4}\CAST@label@originalcontent}
  % \vskip 60pt
  \vskip 25pt
  % \hspace{13em}\CAST@label@authorsign\hrulefill\hspace{1.5em}
  \hspace{10em}{\zihao{4}\CAST@label@authorsign}\hspace{6em}{\zihao{4}\CAST@label@originalDate}\hspace{7em}
  \vskip 15pt
  % \hspace{16em}\CAST@label@originalDate\hspace{1em}

  \vskip 20mm

  \begin{center}
  %{\bf\zihao{3} \CAST@value@school}\\
  {\bf\zihao{3} \CAST@label@authorization}
  \end{center}
  \vskip 10pt
  {\zihao{4} \CAST@label@authorizationcontent}
  % \vskip 60pt
  \vskip 25pt
  % \CAST@label@authorsign\hrulefill\hspace{3em}\CAST@label@Supervisorsign\hrulefill
  \hspace{10em}{\zihao{4}\CAST@label@authorsign}\hspace{6em}{\zihao{4}\CAST@label@originalDate}\hspace{7em}
  % \vskip 15pt
  \vskip 0.5em
  \hspace{10em}{\zihao{4}\CAST@label@Supervisorsign}\hspace{6em}{\zihao{4}\CAST@label@originalDate}\hspace{7em}
  % \CAST@label@originalDate\hfill\hspace{3em}\CAST@label@originalDate
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}


%_ 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\songti \zihao{5} \CAST@label@headschoolname}  % 奇数页左页眉
\fancyfoot[C]{\songti \zihao{5} ~\thepage~}      % 页脚


\fancypagestyle{plain}{% 设置开章页页眉页脚风格(只有页码作为页脚)
  \fancyhf{}%
  \fancyhead[C]{\songti \zihao{5} \CAST@label@headschoolname}
  \fancyfoot[C]{\songti \zihao{5} ~\thepage~} %%首页页脚格式
  %\renewcommand{\headrulewidth}{0pt}%
  %\renewcommand{\footrulewidth}{0pt}%
}  
  
\newenvironment{abstract}
  {\Nchapter{\CAST@label@abstract}}
  {}
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \CAST@label@keywords} #1}
\newenvironment{englishabstract}
  {\Nchapter{\CAST@label@englishabstract}}
  {}
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \CAST@label@englishkeywords} #1}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \Nchapter{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}

\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
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
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newenvironment{publications}[1]
     {\Nchapter{\CAST@label@publications}%
      \@mkboth{\MakeUppercase\CAST@label@publications}
              {\MakeUppercase\CAST@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
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
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}
\newenvironment{resume}
  {\Nchapter{\CAST@label@resume}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}
\renewenvironment{thanks}
  {\Nchapter{\CAST@label@thanks}}
  {}
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `BITthesis.cls'.
