@REM @REM del /q "output\pabot_results"

@REM python Access.py
@REM pip install -r .\requirements.txt



@REM Set Tags=Test


@REM Set Thread=5

@REM pabot --suitesfrom .\Testcase\ --processes %Thread% -d .\output\ -i %Tags% .

git add .
git commit -m "Portfolio Testcase Name Change"
git push origin TC02