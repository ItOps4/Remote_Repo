

RMDIR "output/" /S /Q
del /f ".pabotsuitenames"
RMDIR "Data/__pycache__" /S /Q

Timeout 2

MKDIR "output"

Set Tags=Product_Platform_OKR_Squad

Set Thread=7

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags%  .

Timeout 2
