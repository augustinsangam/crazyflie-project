% 
% Class identification
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mistcoursedoc}

% 
% Parent class
% 
\LoadClass[11pt,twoside]{article}

% 
% Packages
% 
\RequirePackage{array}
\RequirePackage[margin=1in]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[default]{lato}
\RequirePackage{marvosym}
\RequirePackage{paralist}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{hyperref}
\RequirePackage{longtable}
\RequirePackage{units}

% 
% Spacing and style
%
% Header/footer
\pagestyle{fancy}
\fancyhf{} % clear header and footer
% No paragraph ident
\setlength{\parindent}{0pt}
% Paragraph vertical space
\setlength{\parskip}{2mm}

% 
% Document information
% 
\gdef\@author{Missing name}
\def\course#1{\gdef\@course{#1}}
\gdef\@course{Missing course}
\def\term#1{\gdef\@term{#1}}
\gdef\@term{X}
\def\termyears#1{\gdef\@termyears{#1}}
\gdef\@termyears{XXXX/YYYY}
\def\doctype#1{\gdef\@doctype{#1}}
\gdef\@doctype{Missing doc type}

%
% Title
%
\renewcommand{\maketitle}{%
  \title{%
    \@course\\%
    \@term \@termyears\\%
    \@doctype%
  }
  \hypersetup{
    pdfauthor={\@author},
    pdftitle={\@course \@term \@termyears \@doctype},
    pdfkeywords={},
    pdfsubject={},
    pdfcreator={},
    pdflang={English}}
  \fancyhead[RO,LE]{\@course---\@doctype}
  \fancyhead[RE,LO]{\thepage}
  \fancyfoot[CO,CE]{\@term~\@termyears---\@author}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0.4pt}
  \thispagestyle{empty}
  \begin{center}
    \begin{tabular}{p{.3\textwidth}p{.05\textwidth}p{.65\textwidth}}
      \begin{minipage}{.3\textwidth}%
        \includegraphics[width=\textwidth]{polymtl-logo}
        {\tiny Dernière modification: \@date}
      \end{minipage}%
      &&%
         \begin{minipage}{.69\textwidth}%
           {\LARGE \@title \par}%
         \end{minipage}%
    \end{tabular}%
  \end{center}\par%
  \vskip 1.5em%
}
