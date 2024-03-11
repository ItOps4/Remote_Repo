

RMDIR "output/" /S /Q
del /f ".pabotsuitenames"
RMDIR "Data/__pycache__" /S /Q

Timeout 2

MKDIR "output"

Set Tags=PROD-17

Set Thread=4

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% --listener allure_robotframework .

Timeout 2
