
%%
%%  This is file `TMU-Thesis.cls',
%%  It is a modification  of Tabriz_thesis of Vahid Damanafshan and IUST_thesis,
%%	by: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  http://profsite.sttu.ac.ir/mamintoosi
%%	Ver 0.1, Jan 2012

%% Original Copyright

%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{VThesis}
              [10/21/2011 v0.4
 Persian thesis document class in XeLaTeX for University of Tabriz projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\credits#1{\gdef\@credits{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه }}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firstPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
\centerline{{\includegraphics[width=5cm]{Images/logo}}}
\par
\vspace{-5mm}
{\large\bfseries دانشکده \@faculty}
\vspace{-5mm}

\if@bscthesis 
	{\large\bfseries{پروژه کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{
		\vskip .5cm
		 {\large\bfseries \@projectLabel\ \ 
		 	\@degree{} 
		 }
		 {\large\bfseries{در رشته \@subject}}
		 \vskip .2cm
		 \centerline{\large \bfseries%
		 	گرایش \@field}
	}
\fi	
\vskip 1.5cm
{\huge\titlefont \@title}\par
\vskip 5mm

\vskip 1cm
\par
{\Large\bfseries{\large\bfseries   \@name\ \ \@surname}}
\par
\vskip 15mm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of firstPage

\newcommand{\besmPage}{
%% صفحه سفید
\newpage
%\pagestyle{empty}\noindent\\ 
%% بسم الله الرحمن الرحیم
\newpage
\thispagestyle{empty}
%\hfill
\begin{center}
\includegraphics[width=10cm]{Images/besm}
\end{center}
}

%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
\setcounter{page}{1}
%\thispagestyle{empty}

\begin{center}
{\Large \titlefont
 تأییدیه‌ی هیأت داوران جلسه‌ی دفاع از \@projectLabel
 }
\end{center}
\vspace{.5cm}


خانم / آقاي \@name{} \@surname {}  \@projectLabel   {}  \@credits {} {}واحدي خود را با عنوان  \@title {} در تاريخ  \@thesisdate ارائه كردند.
اعضاي هيات داوران نسخه نهايي اين  \@projectLabel{} را از نظر فرم و محتوا تاييد كرده است و پذيرش آنرا براي تكميل درجه \@degree {} پيشنهاد مي‌كنند.
%\vspace{.5cm}


}

% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
آيين‌نامه حق مالكيت مادي و معنوي در مورد نتايج پژوهشهاي علمي دانشگاه تربيت مدرس \\
 }
\vspace{.5cm}
 
\vspace{.5cm}
\end{center}
\doublespacing 

مقدمه: با عنايت به سياست‌هاي پژوهشي و فناوري دانشگاه در راستاي تحقق عدالت و كرامت انسانها كه لازمه شكوفايي علمي و فني است و رعايت حقوق مادي و معنوي دانشگاه و پژوهشگران، لازم است اعضاي هيأت علمي، دانشجويان، دانش‌آموختگان و ديگر همكاران طرح، در مورد نتايج پژوهشهاي علمي كه تحت عناوين پايان‌نامه‌، رساله و طرحهاي تحقيقاتي با هماهنگي دانشگاه انجام شده است، موارد زير را رعايت نمايند:

ماده 1- حق نشر و تكثير پايان نامه/ رساله و درآمدهاي حاصل از آنها متعلق به دانشگاه مي باشد ولي حقوق معنوي پديد آورندگان محفوظ خواهد بود.

ماده 2- انتشار مقاله يا مقالات مستخرج از پايان‌نامه/ رساله به صورت چاپ در نشريات علمي و يا ارائه  در مجامع علمي ‌بايد به نام دانشگاه بوده و با تاييد استاد راهنماي اصلي، يكي از اساتيد راهنما، مشاور و يا دانشجو مسئول مكاتبات مقاله باشد. ولي مسئوليت علمي مقاله مستخرج از پايان نامه و رساله به عهده اساتيد راهنما و دانشجو مي باشد.
تبصره: در مقالاتي كه پس از دانش‌آموختگي بصورت تركيبي از اطلاعات جديد و نتايج حاصل از پايان‌نامه/ رساله نيز منتشر مي‌شود نيز بايد نام دانشگاه درج شود.

ماده 3- انتشار كتاب، نرم افزار و يا  آثار ويژه (اثري هنري مانند فيلم، عكس، نقاشي و نمايشنامه) حاصل از نتايج پايان‌نامه/ رساله و تمامي طرحهاي تحقيقاتي كليه واحدهاي دانشگاه اعم از دانشكده ها، مراكز تحقيقاتي، پژوهشكده ها، پارك علم و فناوري و ديگر واحدها بايد با مجوز كتبي صادره از معاونت پژوهشي دانشگاه و براساس آئين نامه هاي مصوب انجام شود.

ماده 4- ثبت اختراع و تدوين دانش فني و يا ارائه يافته ها در جشنواره‌هاي ملي، منطقه‌اي و بين‌المللي كه حاصل نتايج مستخرج از پايان‌نامه/ رساله و تمامي طرح‌هاي تحقيقاتي دانشگاه بايد با هماهنگي استاد راهنما يا مجري طرح از طريق معاونت پژوهشي دانشگاه انجام گيرد.

ماده 5- اين آيين‌نامه در 5 ماده و يك تبصره در تاريخ1/4/87 در شوراي پژوهشي و در تاريخ 23/4/87 در هيأت رئيسه دانشگاه به تاييد رسيد و در جلسه مورخ 15/7/87  شوراي دانشگاه به تصويب رسيده و از تاريخ تصويب در شوراي دانشگاه لازم‌الاجرا است.

اینجانب 
\@name \ \@surname \ 
به شماره دانشجویی 
\@studentID {}
دانشجوی رشته 
\@subject {}
مقطع تحصیلی 
\@degree {}
دانشکده 
\@faculty{}
 متعهد مي شوم کلِيه نکات مندرج در آئين نامه حق مالکيت مادي و معنوي در مورد نتايج پژوهش هاي  علمي دانشگاه تربيت مدرس را در انتشار يافته هاي علمي مستخرج از پايان نامه / رساله تحصيلي خود رعايت نمايم. در صورت تخلف از مفاد آئين نامه فوق الاشعار به دانشگاه وكالت و نمايندگي مي دهم كه از طرف اينجانب نسبت به لغو امتياز اختراع بنام بنده و يا هر گونه امتياز ديگر و تغيير آن به نام دانشگاه اقدام نمايد. ضمناً نسبت به جبران فوري ضرر و زيان حاصله بر اساس برآورد دانشگاه اقدام خواهم نمود و بدينوسيله حق هر گونه اعتراض را از خود سلب نمودم»

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{lr}

 تاریخ و امضا: & \\
\end{tabular}
\end{flushleft}
}

% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
آيين نامه چاپ پايان‌نامه (رساله‌)هاي دانشجويان دانشگاه تربيت مدرس‌ \\
 }
\vspace{.5cm}
\end{center}
\doublespacing 

نظر به اينكه چاپ و انتشار پايان نامه (رساله‌)هاي تحصيلي دانشجويان دانشگاه تربيت مدرس‌، مبين ‌بخشي از فعاليتهاي علمي - پژوهشي دانشگاه است بنابراين به منظور آگاهي و رعايت حقوق دانشگاه‌،دانش آموختگان اين دانشگاه نسبت به رعايت موارد ذيل متعهد مي‌شوند:
ماده 1: در صورت اقدام به چاپ پايان نامه (رساله‌)ي خود، مراتب را قبلاً به طور كتبي به «دفتر نشر آثارعلمي‌» دانشگاه اطلاع دهد.
ماده 2: در صفحه سوم كتاب (پس از برگ شناسنامه‌) عبارت ذيل را چاپ كند:
«كتاب حاضر، حاصل پايان نامه كارشناسي ارشد/ رساله دكتري نگارنده در رشته‌ \@subject {} است‌ كه در \@thesisdate	{}  در دانشكده‌\@faculty {} دانشگاه تربيت مدرس به راهنمايي سركار خانم‌/جناب ‌آقاي \@firstsupervisor، مشاوره سركار خانم‌/جناب آقاي  \@firstadvisor  {} از آن دفاع شده است‌.»
ماده 3: به منظور جبران بخشي از هزينه‌هاي انتشارات دانشگاه‌، تعداد يك درصد شمارگان كتاب (در هر نوبت‌چاپ‌) را به «دفتر نشر آثارعلمي‌» دانشگاه اهدا كند. دانشگاه مي‌تواند مازاد نياز خود را به نفع مركز نشر درمعرض فروش قرار دهد.
ماده 4: در صورت عدم رعايت ماده 3، 50\% بهاي شمارگان چاپ شده را به عنوان خسارت به دانشگاه تربيت‌مدرس‌، تأديه كند.
ماده 5: دانشجو تعهد و قبول مي كند در صورت خودداري از پرداخت بهاي خسارت‌، دانشگاه مي‌تواند خسارت مذكور را از طريق مراجع قضايي مطالبه و وصول كند؛ به علاوه به دانشگاه حق مي‌دهد به منظور استيفاي حقوق خود، از طريق دادگاه‌، معادل وجه مذكور در ماده 4 را از محل توقيف كتابهاي عرضه شده ‌نگارنده براي فروش‌، تامين نمايد.
ماده 6: اينجانب
\@name \ \@surname \ {} 
دانشجوي رشته
\@subject{} 
‌مقطع‌		
\@degree{} 
تعهد فوق وضمانت اجرايي آن را قبول كرده‌، به آن ملتزم مي شوم‌.

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{l p{.25\textwidth}}
% چون & در ماکروی دخل جدول مشکل ایجاد می‌کرد مجبور شدم دو تیکه بنویسم
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		استاد راهنما:
	\else
		اساتید راهنما: 
	\fi
\fi
&
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		\@firstsupervisor
	\else
		\@firstsupervisor{} \newline \@secondsupervisor
	\fi
\fi \\
  تاریخ: & \\
	 امضا: &\\
\end{tabular}
\end{flushleft}
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
\newcommand\abstractPage{\newpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries چکیده}
\vspace{5mm}
\par
\noindent
\@fa-abstract
\vspace{8mm}
\par
\noindent
\textbf{واژگان کلیدی:} 
\@keywords
\newpage
}

% \def\latinabstract{\newpage
% \thispagestyle{empty}
% \vskip 15mm
% \begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
% {\bfseries Abstract}
% \end{center}
% \vspace{5mm}}

% \def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\centerline{\Large \bfseries قدردانی}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@fa-abstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300
\font\supervisorfont=cmbxti10

\newcommand{\latinfirstPage}{%
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries Abstract:}
\vspace{5mm}
\par
\noindent
\@en-abstract
\vspace{8mm}
\par
\noindent
\textbf{Keywords:} 
\@latinkeywords

\begin{titlepage}
\vspace{-10mm}
{\includegraphics[height=4.5cm]{Images/logo-en}}
\centerline{\bf \@latinuniversity} 
\large\bfseries
\@latinfaculty\space 
\vskip 1cm
{%\latintitlefont 
\Huge
\@latintitle}
%\baselineskip=.750cm \par
\vskip 15mm
{
\large
\if@bscthesis 
    Bachelor of Science Thesis
	in  \@latinsubject 
\else
	A Thesis Submitted in Partial Fulfillment of the Requirement for the Degree of 
	 \if@mscthesis
	Master of Science
	\else
	 Doctor of Philosophy
	\fi
	in  \@latinsubject 
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 15mm
{\bfseries\latinby}\par
{\large %\supervisorfont
\rm\@latinname \; \@latinsurname}\par

\vskip 15mm

\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors:
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors:
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 1cm

{\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% M.Amintoosi
%% 
%% Copyright © 2011-2012      by Vahid Damanafshan     
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his invaluable hints.
%%
%% End of file `IUST-Thesis.cls'.
