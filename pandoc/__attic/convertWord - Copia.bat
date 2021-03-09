pandoc .\word\home.docx -t html -f docx  -o .\tmp\home.xml
pandoc .\word\metodologia.docx -t html -f docx -o .\tmp\metodologia.xml
type .\template\header.xml .\tmp\home.xml .\template\tail.xml > ..\input\pagecontent\index.xml
type .\template\header.xml .\tmp\metodologia.xml .\template\tail.xml > ..\input\pagecontent\methodology.xml
