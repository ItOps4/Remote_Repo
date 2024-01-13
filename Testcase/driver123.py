from selenium import webdriver
import time
from webdriver_manager.chrome import ChromeDriverManager

def Launch_Browser():
    # Set Chrome options to run in incognito mode
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--incognito')
    driver = webdriver.Chrome(ChromeDriverManager().install(), options=chrome_options)
    driver.get("https://www.saucedemo.com/")
    driver.maximize_window()
    return(driver)
# get_chromedriver_path()
