*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser  https://pdexternal.cheetahnetworks-pulseview.com/     chrome
    maximize browser window
    input text  id:id_username  Cambrian
    input text  id:id_password  MNGTwdf386
    click element  xpath://*[@id="loginForm"]/input[4]
    title should be  Cheetah Networks
    close browser

*** Keywords ***