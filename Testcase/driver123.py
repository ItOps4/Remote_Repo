from selenium import webdriver
import time
from webdriver_manager.chrome import ChromeDriverManager

def Launch_Browser():
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--incognito')
    driver = webdriver.Chrome(ChromeDriverManager().install(), options=chrome_options)
    driver.get("https://predev-productor.valuefactors.io/auth/login/")
    driver.maximize_window()
    return(driver)
