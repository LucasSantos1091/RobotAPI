*** Settings ***
Resource        ResourceAPI.robot




*** Test Cases ***

Cenario 01 - Clima na Italia
    Me as a rain lover user
    Want to know the weather in "Italy,it"
    To find out if I can travel

 Cenario 02
    Me as a london resident
    Want to check the weather in "London,uk"
    To find out if I can go out to watch Liverpool