@REM del /q "output\pabot_results"

pip install -r .\requirements.txt
Set Tags=tc01
Set Thread=5
pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% .