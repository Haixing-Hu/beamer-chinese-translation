beamer-chinese-translation
==========================

Translation of the LaTeX beamer package into Simplified/Traditional Chinese.

Installation
------------

Executes the following shell command in POSIX-like systems:

	$cd beamer-chinese-translation
	$sudo make
	
Or you can copy the files manually. Refer to the `Makefile` for details.
	
Usage
-----

The following is the template of a beamer slide:

	\documentclass[10pt,serif,t]{beamer}
	\usepackage{times}
	\usepackage[T1]{fontenc}
	\usepackage{fancybox}
	\usepackage{amsthm}
	\usepackage{amsmath}
	\usepackage{amsfonts}
	\usepackage{graphicx}
	\usepackage{subfigure}
	% Use the ctex package to support the chinese fonts
	\usepackage[adobefonts]{ctex} 

	% Select the language: either SimplifiedChinese or TraditionalChinese
	\uselanguage{SimplifiedChinese}
	% Sets the order of language to be used. This is REQUIRED!
	\languagepath{SimplifiedChinese}
	% Makes the caption of figures and tables to be numbered. This is optional.
	\setbeamertemplate{caption}[numbered]

	\usetheme{Madrid}
		
	\title{...}
	\author{...}
	\institute{...}
	\date{\today}

	\begin{document}

	\begin{frame}
    	\titlepage
	\end{frame}
	
	\begin{frame}
    	\frametitle{提纲}
	  	\tableofcontents
	\end{frame}
	
	\begin{frame}
    	\frametitle{…}
    	…
	\end{frame}
	
	…
	
	\end{document}
	
	


