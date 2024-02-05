@REM @REM del /q "output\pabot_results"

@REM pip install -r .\requirements.txt



Set Tags=Test


Set Thread=5

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% .
