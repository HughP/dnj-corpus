# Job tools
These are some notes on why certain command line tools were chosen other options were available.

### Tool for the Job Notes

#### LibreOffice headless

`libreoffice --headless --convert-to "txt:Text (encoded):UTF8" mydocument.doc`
* Source:
 https://stackoverflow.com/questions/5671988/how-to-extract-just-plain-text-from-doc-docx-files-unix
* _Note_:
This works for most things in the .doc files, but did not get all headings. or all content from text boxes.

#### Antiword
`antiword gweta01.doc > gweta01-aw.txt`
* Source:
 http://www.winfield.demon.nl/#Programmer
* _Note_:
 puts in a lot of character for charts. (makes ASCII charts), when counting characters this will throw off character counts.

#### textract
* Source: https://textract.readthedocs.io/en/stable/installation.html#ubuntu-debian
* _Note_:
 This is just a python wraper around several tools, for .doc antiword was the tool used. So why not just use antiword?

#### pandoc
* Source:
* _Note_:
Did not work with .doc files.

#### doctotext
* Source:  http://silvercoders.com/en/products/doctotext/
* _Note_:
Needed local compiling directions were not clear. needed more know how to accomplish this.
