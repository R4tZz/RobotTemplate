*** Settings ***
Library             Browser
Resource            ../resources/keywords/common_keywords.robot
Library             ../lib/RobotDotenv/DotenvLibrary.py
Library             ../lib/YamlHandler/YamlHandler.py

Suite Setup         Suite Browser Setup    ${browser_config}    ${env_config}
Suite Teardown      Close Browser Setup


*** Variables ***
${browser_config}       default
${env_config}           dev


*** Test Cases ***
Simple Test Case
    Get Title    ==    ecom-frontend
