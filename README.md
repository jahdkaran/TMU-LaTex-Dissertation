# TMU-LaTex-Dissertation
 LaTeX template for M.Sc./Ph.D. theses of Tarbiat Modares University - قالب رساله/پایان‌نامه دانشگاه تربیت مدرس


<div dir="rtl">

## راهنمای فارسی
### ویژگی‌ها
1. ‫ساخته شده بر اساس قالب‌های پیشرفته‌ [IUST-Thesis](http://www.parsilatex.com/joomla/index.php/remository/Thesis_Templates/%D8%A7%D8%B3%D8%AA%DB%8C%D9%84-%D9%84%D8%A7%D8%AA%DA%A9-%D8%A8%D8%B1%D8%A7%DB%8C-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86%E2%80%8C%D9%86%D8%A7%D9%85%D9%87%E2%80%8C%D9%87%D8%A7%DB%8C-%DA%A9%D8%A7%D8%B1%D8%B4%D9%86%D8%A7%D8%B3%DB%8C-%D8%AA%D8%A7-%D8%AF%DA%A9%D8%AA%D8%B1%D8%A7%DB%8C-%D8%AF%D8%A7%D9%86%D8%B4%DA%AF%D8%A7%D9%87-%D8%B9%D9%84%D9%85-%D9%88-%D8%B5%D9%86%D8%B9%D8%AA-%D8%A7%DB%8C%D8%B1%D8%A7%D9%86/) و HSU-Thesis-V1 اثر دکتر محمود امین‌طوسی.
1. قابلیت انتخاب سبک‌های ارجاع‌دهی فارسی گوناگون برای رشته‌های مختلف، مطابق با سیستم‌های شماره‌دار و نویسنده-سال.
1. ‫مدیریت هوشمند واژه‌نامه‌ها و درج اصطلاحات تخصصی، با استفاده از بستهٔ `glossaries` و موتور `xindy`.

  ### چگونه استفاده کنیم؟
.
با دستور زیر نیز می‌توانید به آخرین نسخهٔ در حال توسعهٔ قالب دسترسی داشته باشید:
<div dir="ltr">

```bash
git clone https://github.com/jahdkaran/TMU-LaTex-Dissertation.git
```

</div>

با دستور زیر میتوانید خروجی را بگیرید.

<div dir="ltr">

```bash
latexmk -xelatex -output-directory=./out -interaction=nonstopmode -synctex=1 main.tex 
```

</div>

#### پیش‌نیازها
* ‫نصب کامل `texlive` بر روی لینوکس، ویندوز یا `MacTex` بر روی سیستم‌عامل مک. خصوصاً بسته‌های لاتک زیر باید نصب باشند:
  * `زی‌پرشین`: تمام امکانات حروف‌چینی زبان فارسی در این قالب پایان‌نامه، با بستهٔ `XePersian` فراهم شده است.
  * ‫`persian-bib`: سبک‌های ارجاع‌دهی فارسی با این بسته فراهم شده‌اند.
  * ‫`glossaries`: بسته مدیریت پیشرفتهٔ واژه‌نامه‌ها در لاتک.
  * ‫`todonotes`: امکان حاشیه‌نویسی و نکته‌گذاری را در فایل‌های TeX شما فراهم می‌آورد.
* ‫`latexmk`: برنامه‌ایست معادل `make` برای پروژه‌های لاتک که مراحل مختلف کامپایل را در صورت نیاز تکرار می‌کند (باید در نسخه کامل `texlive` باشد).
* `‫bibtex`: برنامهٔ ساخت فهرست مراجع و کتابشناسی (باید در نسخه کامل `texlive` باشد) و بستهٔ `persian-bib`.
* ‫`xindy`: برنامهٔ پشتی مورد نیاز برای ساخت واژه‌نامه‌ها و نمایه‌ها.
  * زبان `persian` یا `persian-variant3` باید برای `xindy` نصب باشد (که در اوبونتو 16.04 دستی باید دانلود و کپی شود).
* ‫یک ویرایشگر یا IDE برای پروژه‌های TeX، ترجیحاً با پشتیبانی از زبان‌های دوجهته یا راست به چپ، مثل [Texmaker](https://www.xm1math.net/texmaker/) و یا [TextStudio](https://www.texstudio.org/).
* نصب فونت های قرار داده شده در فولدر fonts

</div>

