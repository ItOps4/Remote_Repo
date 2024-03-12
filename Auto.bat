

RMDIR "output/" /S /Q
del /f ".pabotsuitenames"
RMDIR "Data/__pycache__" /S /Q

Timeout 2

MKDIR "output"

Set Tags=Test

Set Thread=4

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags%  .

Timeout 2
