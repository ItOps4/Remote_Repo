

RMDIR "output/" /S /Q
del /f ".pabotsuitenames"
RMDIR "Data/__pycache__" /S /Q

Timeout 2

MKDIR "output"

<<<<<<< HEAD
Set Tags=Product_Platform_OKR_Squad
=======
Set Tags=PPG_Product_Platform
>>>>>>> c2402fb45d3c10ac5f16c0fa131a14a9b371e464

Set Thread=5

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags%  .

Timeout 2
