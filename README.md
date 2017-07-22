
<!-- README.md is generated from README.Rmd. Please edit that file -->

------------------------------------------------------------------------

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/spAddins)](https://cran.r-project.org/package=spAddins) [![GitHub version](https://img.shields.io/badge/GitHub-0.1.7.1000-brightgreen.svg)](https://github.com/GegznaV/spAddins) [![Travis-CI Build Status](https://travis-ci.org/GegznaV/spAddins.png?branch=master)](https://travis-ci.org/GegznaV/spAddins) [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![Rdoc](http://www.rdocumentation.org/badges/version/spAddins)](http://www.rdocumentation.org/packages/spAddins) [![Last-update](https://img.shields.io/badge/Updated%20on-2017--07--23-yellowgreen.svg)](/commits/master)

------------------------------------------------------------------------

R package `spAddins`
====================

`spAddins` is an R package that provides a set of RStudio addins which are designed to be used in combination with user-defined RStudio keyboard shortcuts. These addins either:

1.  **insert** text at the cursor position (e.g. insert operators `%>%`, `<<-`, `%$%`, etc.),
2.  **replace** symbols in selected pieces of text (e.g., convert backslashes to forward slashes which results in strings like `"c:\data\"` converted into `"c:/data/"`) or
3.  **enclose** text with special symbols (e.g., converts "bold" into "\*\*bold\*\*" that is interpreted as "**bold**") which is convenient for editing R Markdown files.

Install package
---------------

Install released version from CRAN:

``` r
install.packages("spAddins")
```

Install development version from GitHub:

``` r
if (!require(devtools)) install.packages("devtools")
library(devtools)
install_github("GegznaV/spAddins")
```

Recommended workflow and a few examples
---------------------------------------

``` r
vignette("v1_workflow", package = "spAddins")

browseVignettes("spAddins")
```

Available add-in functions
--------------------------

### "Insert" family

These functions insert various R operators.

| Function                            |        Inserts       | `R` package associated with operator |
|-------------------------------------|:--------------------:|:------------------------------------:|
| insertArrowLR2\_Addin()             |       &lt;&lt;-      |                R base                |
| insertArrowRL\_Addin()              |         -&gt;        |                R base                |
| insertArrowRL2\_Addin()             |       -&gt;&gt;      |                R base                |
| insertIn\_Addin()                   |         %in%         |                R base                |
| insertMatMuliplication\_Addin()     |         %\*%         |                R base                |
| insertPipeline\_Addin()             |        %&gt;%        |               magrittr               |
| insertTeeOperator\_Addin()          |        %T&gt;%       |               magrittr               |
| insertCompAssignPipe\_Addin()       |      %&lt;&gt;%      |               magrittr               |
| insertExPipe\_Addin()               |          %$%         |               magrittr               |
| insert\_if\_null\_Addin()           |      %if\_null%      |               spMisc[1]              |
| insert\_if\_null\_or\_len0\_Addin() | %if\_null\_or\_len0% |                spMisc                |
| insertNotIn\_Addin()                |         %!in%        |                spMisc                |
| insertPaste\_Addin()                |         %.+.%        |                spMisc                |
| insertPaste0\_Addin()               |         %++%         |                spMisc                |
| insertPasteRebus\_Addin()           |          %R%         |                 rebus                |

The following functions may be useful for either editing **R Markdown** files or, if commented (`#`), for structuring R code files.

| Function                  |            Description           | Example (first 10 symbols) |
|---------------------------|:--------------------------------:|:--------------------------:|
| insert\_ss\_line\_Addin() | Insert single straight (SS) line |        `----------`        |
| insert\_ds\_line\_Addin() | Insert double straight (DS) line |        `==========`        |
| insert\_sw\_line\_Addin() |   Insert single wavy (SW) line   |        `~~~~~~~~~~`        |

### "Replace" family

| Action                        | Function               | Text to edit |     Result     |
|-------------------------------|------------------------|:------------:|:--------------:|
| Replace \`\\\` with \` \\\\\` | Back2doubleBackSlash() |  c:\\data\\  | c:\\\\data\\\\ |
| Replace \`\\\` with \` /\`    | Back2ForwardSlash()    |  c:\\data\\  |    c:/data/    |

### "Enclose" family

These functions are useful for editing **R Markdown** files.

<table style="width:100%;">
<colgroup>
<col width="28%" />
<col width="21%" />
<col width="13%" />
<col width="20%" />
<col width="15%" />
</colgroup>
<thead>
<tr class="header">
<th>Action</th>
<th>Function</th>
<th align="center">Text to edit</th>
<th align="center">Result</th>
<th align="center">Interpreted as</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Enclose with single asterisk (<code>*</code>)</td>
<td>enclose_with_asterisk()</td>
<td align="center">italics</td>
<td align="center">*italics*</td>
<td align="center"><em>italics</em></td>
</tr>
<tr class="even">
<td>Enclose with single underscore (<code>_</code>)</td>
<td>enclose_with_underscore()</td>
<td align="center">italics</td>
<td align="center">_italics_</td>
<td align="center"><em>italics</em></td>
</tr>
<tr class="odd">
<td>Enclose with double asterisk (<code>**</code>)</td>
<td>enclose_with_asterisk2()</td>
<td align="center">bold</td>
<td align="center">**bold**</td>
<td align="center"><strong>bold</strong></td>
</tr>
<tr class="even">
<td>Enclose with double underscore (<code>__</code>)</td>
<td>enclose_with_underscore2()</td>
<td align="center">bold</td>
<td align="center">__bold__</td>
<td align="center"><strong>bold</strong></td>
</tr>
<tr class="odd">
<td>Enclose with caret (<code>^</code>)</td>
<td>enclose_with_caret()</td>
<td align="center">a superscript</td>
<td align="center">a ^superscript^</td>
<td align="center">a <sup>superscript</sup></td>
</tr>
<tr class="even">
<td>Enclose with single tilde (<code>~</code>)</td>
<td>enclose_with_tilde()</td>
<td align="center">a subscript</td>
<td align="center">a ~subscript~</td>
<td align="center">a <sub>subscript</sub></td>
</tr>
<tr class="odd">
<td>Enclose with double tilde (<code>~~</code>)</td>
<td>enclose_with_tilde2()</td>
<td align="center">strikethrough</td>
<td align="center">~~strikethrough~~</td>
<td align="center"><del>strikethrough</del></td>
</tr>
<tr class="even">
<td>Enclose with single back tick (`)</td>
<td>enclose_with_backtick()</td>
<td align="center">code</td>
<td align="center">`code`</td>
<td align="center"><code>code</code></td>
</tr>
<tr class="odd">
<td>Enclose with single dollar sign (<code>$</code>)</td>
<td>enclose_with_dollar()</td>
<td align="center">equation^{inline}</td>
<td align="center"><code>$equation^{inline}$</code></td>
<td align="center"><span class="math inline"><em>e</em><em>q</em><em>u</em><em>a</em><em>t</em><em>i</em><em>o</em><em>n</em><sup><em>i</em><em>n</em><em>l</em><em>i</em><em>n</em><em>e</em></sup></span></td>
</tr>
<tr class="even">
<td>Enclose with double dollar sign (<code>$$</code>)</td>
<td>enclose_with_dollar2()</td>
<td align="center">equation_{block}</td>
<td align="center"><code>$$equation_{block}$$</code></td>
<td align="center"><span class="math inline"><em>e</em><em>q</em><em>u</em><em>a</em><em>t</em><em>i</em><em>o</em><em>n</em><sub><em>b</em><em>l</em><em>o</em><em>c</em><em>k</em></sub></span></td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

[1] Available at <https://github.com/GegznaV/spMisc>.
