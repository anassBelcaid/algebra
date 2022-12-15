\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ensaexam}[2022-05-01 Exam class for ENSA School]




% essential pacckages 
\RequirePackage{tikz}
\RequirePackage{amsmath}
\RequirePackage{etoolbox}
% \RequirePackage{titlesec}
\RequirePackage{soul}
\RequirePackage{lastpage}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{tcolorbox}







% Trying to toggle with palatino
\newtoggle{UsePalatino}
\DeclareOption{palatino}{
  \toggletrue{UsePalatino}
}
\iftoggle{UsePalatino}{
	% change the font
	\RequirePackage{mathpazo}
	\linespread{1.05}
	\RequirePackage[T1]{fontenc}
}
{}

\newtoggle{UseMinted}
\DeclareOption{code}{
  \toggletrue{UseMinted}
}


\iftoggle{UseMinted}{
	% load minted; don't load framed though
	\makeatletter
	\@namedef{ver@framed.sty}{9999/12/31}
	\@namedef{opt@framed.sty}{}
	\makeatother
	\usepackage{minted}
	\usepackage[
	backgroundcolor = white
	, hidealllines=true
	]{mdframed}

	\usepackage[]{FiraSans}
}{}

% Loading the main class
\ProcessOptions\relax
\LoadClass[11pt,a4paper,addpoints]{exam}
% \pointsdroppedatright
\bracketedpoints
\setlength{\rightpointsmargin}{2.5cm}

% Header and footers
\pagestyle{headandfoot}



% commands and variables to modify the content of the documetn
\newcommand{\TheModuleName}{CSXXX}
\newcommand{\ModuleName}[1]{\renewcommand{\TheModuleName}{#1}}
\newcommand{\TheExamCode}{CS241}
\newcommand{\ExamCode}[1]{\renewcommand{\TheExamCode}{#1}}
\newcommand{\TheExamPeriod}{Spring}
\newcommand{\ExamPeriod}[1]{\renewcommand{\TheExamPeriod}{#1}}
\newcommand{\TheTimeAllowed}{60}
\newcommand{\TimeAllowed}[1]{\renewcommand{\TheTimeAllowed}{#1}}
\newcommand{\TheInstructions}{
  \begin{itemize}
    \item Vous avez {\bf \TheTimeAllowed\; minutes.}
    \item Verifier que vous disposez de toutes les pages.
  \end{itemize}
  
}

\newcommand{\Instructions}[1]{\renewcommand{\TheInstructions}{#1}}
\newcommand{\QuestionInstructions}[1]{\renewcommand{\TheQuestionInstructions}{#1}}
\newcommand{\TheLogo}{Log}
\newcommand{\Logo}[1]{\renewcommand{\TheLogo}{#1}}


\header{\textbf{\TheModuleName}}{\textbf{\TheExamCode}}{\textbf{\TheExamPeriod}}
\footer{}{-~\thepage\ of \pageref{LastPage}~-}{ \iflastpage{End}{Continued}}

% No indentation
\setlength{\parindent}{0mm}

\newcommand{\MakeHeading}
{
  \begin{center}
  \begin{tabular}{m{3cm}m{3cm}m{3cm}m{2cm}m{3cm}}
    \TheLogo & \multicolumn{4}{c}{\bf\Large Ecole Nationale des Sciences
    Appliques.}\\[8pt]

             & \bf Nom: &\rule{3cm}{1pt} & \bf Prenom: &\rule{3cm}{1pt}
                                \\[8pt]
                                & \bf Discipline: &  \rule{3cm}{1pt} & \bf Date: &\rule{3cm}{1pt}
                                \\[8pt]
    \end{tabular}
  \end{center}
  \begin{tcolorbox}
   \TheInstructions
  \end{tcolorbox}
  \begin{center}
    \pointtable[h][questions] 
  \end{center}
  
  
}

