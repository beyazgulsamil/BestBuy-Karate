Feature: bestBuy
  Background: bg
    * configure driver = {type: 'chrome'}
    * driver 'https://www.bestbuy.com'
    * delay(10000)
    * click("{h4:1}United States")
    * waitForEnabled('.c-modal-close-icon').click()
    * delay(10000)

  Scenario: task1
    * match driver.title == "Best Buy | Official Online Store | Shop Now & Save"
    * input("#gh-search-input" , "Drone")
    * click(".header-search-icon")
    * waitFor(".sku-item")

  Scenario: task2
    * click(".account-button")
    * click(".sign-in-btn")
    * input("#fld-e" , "beyazgulsamil@gmail.com")
    * input("#fld-p1" , "beyazgul741")
    * click("{button}Sign In")
    * delay(10000)
    * def welcomeText = scriptAll('.line-clamp', '_.textContent')
    * match welcomeText contains 'Hi, Samil'

  Scenario: task3
    * click(".account-button")
    * click(".sign-in-btn")
    * delay(10000)
    * click("{button}Sign In with Google")
    * switchPage("2")
    * print(driver.title, "merebe")
    * input("{div}Email or phone","hyeni4444")
    * click("{span}next")
    * input("[type="password"]","yenihesap")
    * click("{span}next")
    * def welcomeText = scriptAll('.line-clamp', '_.textContent')
    * match welcomeText contains 'Hi, Samil'

  Scenario: task4
    * click("{button}Menu")
    * click("{button}Audio")
    * click("{button}Headphones")
    * click("{a}Wireless Headphones")
    * click("[data-track='Brand - Show More']")
    * click("{a}Philips")
    * click("{button}Show Results")
    * delay(10000)
    * click("{^a:2}Philips")
    * delay(10000)
    * waitFor(".col-xs-6 .save-for-later-save").click
    * click("{span}Saved Items")
    * waitFor(".c-carousel-item")
