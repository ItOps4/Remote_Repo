@REM @REM del /q "output\pabot_results"

@REM python Access.py
@REM pip install -r .\requirements.txt



Set Tags=PROD-4


Set Thread=5

pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% .



