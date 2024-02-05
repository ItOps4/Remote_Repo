

RMDIR "output/" /S /Q

Timeout 2

MKDIR "output"

Set Tags=Test

Set Thread=5

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% --listener allure_robotframework .

Timeout 2
