from selenium import webdriver
from pyvirtualdisplay import Display
import time
import datetime
import random

# Logging
start_time = datetime.datetime.now()
f = open("bg.log", "a")
f.write("Run started at: " + str(start_time) + "\n") 
f.close()

# Random delay for each click
delay=600
timedelay = random.randrange(0,delay)
time.sleep(timedelay)

# Display for working on pi, visible=1 for debugging
display = Display(visible=1, size=(800, 800))
display.start()

# Open incognito window for no cookies
options=webdriver.ChromeOptions()
options.add_argument("--incognito")

# Open chrome tab and get website, click
driver = webdriver.Chrome(chrome_options=options)
driver.get('www.url.com')
driver.find_element_by_xpath("//*[@id=\"buttonXpath\"]").click()

# Sleep so user can see results for debugging
time.sleep(5)

# Destroy selenium instance and display
driver.quit()
display.stop()

# Write to log
f = open("bg.log", "a")
end_time = datetime.datetime.now()
f.write("Run ended at: " + str(end_time) + "\n" + "\n")
f.close()
