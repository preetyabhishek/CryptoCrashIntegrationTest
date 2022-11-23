*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://pdexternal.cheetahnetworks-pulseview.com/

*** Test Cases ***
DashboardTest
    open browser  ${url}     ${browser}
    maximize browser window
    loginWithValidUserNameAndPassword
    click link  xpath://*[@id="root"]/div/div[1]/div/a[8]
    unselect checkbox  showOutageIcon
    sleep   2
    select checkbox  showTowerIcon
    sleep   2
    select checkbox  showOutageIcon
    sleep   2
    close browser

ContactTest
    open browser  ${url}     ${browser}
    maximize browser window
    loginWithValidUserNameAndPassword
    click link  xpath://*[@id="root"]/div/div[1]/div/a[8]
    input text  xpath://*[@id="root"]/div/main/div/form/div[1]/div/input    athif
    input text  //*[@id="root"]/div/main/div/form/div[2]/div/input    athif.shaffy@gmail.com
    input text  xpath://*[@id="root"]/div/main/div/form/div[3]/div/textarea     this is the sample message to verify the test case
    sleep  5
    close browser

PulseMapTest
    open browser  ${url}     ${browser}
    maximize browser window
    loginWithValidUserNameAndPassword
    click link  xpath://*[@id="root"]/div/div[1]/div/a[2]
    unselect checkbox  showOutageIcon
    select checkbox  showTowerIcon
    sleep   2
    select checkbox  showOutageIcon
    close browser

*** Keywords ***
loginWithValidUserNameAndPassword
    input text  id:id_username  Cambrian
    input text  id:id_password  MNGTwdf386
    click element  xpath://*[@id="loginForm"]/input[4]