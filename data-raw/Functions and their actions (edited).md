Available add-in functions 
==========================

## "Insert" family

These functions insert various R operators.

| Function                            | Inserts              | Package associated with operator|
|-------------------------------------|:--------------------:|:-------------------------------:|
| insertArrowLR2\_Addin()             | &lt;&lt;-            | R base                          |
| insertArrowRL\_Addin()              | -&gt;                | R base                          |
| insertArrowRL2\_Addin()             | -&gt;&gt;            | R base                          |
| insertIn\_Addin()                   | %in%                 | R base                          |
| insertMatMuliplication\_Addin()     | %\*%                 | R base                          |
| insert\_if\_null\_Addin()           | %if\_null%           | spMisc[^1]                      |
| insert\_if\_null\_or\_len0\_Addin() | %if\_null\_or\_len0% | spMisc                          |
| insertIfNULL\_Addin()               | %if.NULL%            | spMisc                          |
| insertNotIn\_Addin()                | %!in%                | spMisc                          |
| insertPaste\_Addin()                | %.+.%                | spMisc                          |
| insertPaste0\_Addin()               | %++%                 | spMisc                          |
| insertPipeline\_Addin()             | %&gt;%               | magrittr                        |
| insertTeeOperator\_Addin()          | %T&gt;%              | magrittr                        |
| insertCompAssignPipe\_Addin()       | %&lt;&gt;%           | magrittr                        |
| insertExPipe\_Addin()               | %$%                  | magrittr                        |

[^1]: Available at <https://github.com/GegznaV/spMisc>.

## "Replace" family 

| Action                        | Function               | Example (before) | Example (after) |
|-------------------------------|------------------------|:----------------:|:---------------:|
| Replace \`\\\` with \` \\\\\` | Back2doubleBackSlash() | c:\\data\\       | c:\\\\data\\\\  |
| Replace \`\\\` with \` /\`    | Back2ForwardSlash()    | c:\\data\\       | c:/data/        |


## "Enclose" family

These functions are useful for editing R Markdown files.

| Action                                 | Function                     | Example (before) | Example (after) | Interpreted result |
|----------------------------------------|------------------------------|:----------------:|:---------------:|:------------------:|
| Enclose with single asterisk (`*`)     | enclose\_with\_asterisk()    | word             | \*word\*        | *word*             |
| Enclose with double asterisk (`**`)    | enclose\_with\_asterisk2()   | word             | \*\*word\*\*    | **word**           |
| Enclose with single back tick (\`)     | enclose\_with\_backtick()    | word             | \`word\`        | `word`             |
| Enclose with single dollar sign (`$`)  | enclose\_with\_dollar()      | word             | &#36;word&#36;  | $word$             |
| Enclose with single dollar sign (`$$`) | enclose\_with\_dollar2()     | word             | ```$$word$$```  | $word$             |
| Enclose with single underscore (`_`)   | enclose\_with\_underscore()  | word             | \_word\_        | _word_             |
| Enclose with double underscore (`__`)  | enclose\_with\_underscore2() | word             | \_\_word\_\_    | __word__           |
