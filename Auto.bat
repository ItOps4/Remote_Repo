set "tags=TC01"
set "uniquetags = TC03"

robot -d .\output\ -i %tags% .\Testcase\

robot -d .\output\ -i %uniquetags% .\Testcase\
