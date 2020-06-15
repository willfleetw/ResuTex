# ResuTeX
A LaTeX resume/CV template, currently used for my own resume. Forked from Micheal
Henning's ResuTex project. Updated to allow arbitray sized lists of items, as well
as the few format changes. 

This document implements a JSON-like syntax for defining its components, based 
on `\newcommand` macros defined at the top of the file. A sample of the resume's 
header and contact info, including the aformentioned macros and the way they are 
used to format the actual content, follows:

```latex
\newcommand{\Name}[1]{#1} % (no extra formatting on macros like these)
\newcommand{\Phone}[1]{#1}
\newcommand{\Email}[1]{\href{mailto:#1}{<#1>}}
\newcommand{\Website}[1]{\texttt{\href{#1}{\textul{#1}}}}
\newcommand{\ContactInfo}[5]{
  \part*{#1}
  \begin{tabular}{ m{12em} m{24em} }
    #2 & \texttt{#4} \\ #3 & \texttt{#5}
  \end{tabular}
}

...

\begin{document}

\ContactInfo
  {\Name{William Fleetwood}}
  {\Email{willfleetw@gmail.com}}
  {\Phone{(xxx) xxx-xxxx}}
  {\Website{https://linkedin.com/in/william-fleetwood}}
```

The macro definitions can be modified to change the output formatting and 
layout, but the content is provided in the hierarchical syntax at the end so 
volatile fields can be modified as they need changing, or so the whole document 
can be modified to reflect the _curriculum vitae_ of another person.
