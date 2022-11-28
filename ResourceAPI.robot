*** Settings ***
Library         RequestsLibrary
Library         Collections


*** Variables ***
${URL_API}         https://api.openweathermap.org/data/2.5
#${Endpoint}        weather?q=Italy,it
${API_Key}         680d16b5724f4d90ad60e073421387cd
${Sucess_state}    200

*** Keywords ***
Me as a rain lover user
    Create Session    weather    ${URL_API}  
Want to know the weather in "${Pais}"
    ${Response}    Get Request    weather        /weather?q=${Pais}&appid=${API_Key}
    Log                           ${Response.text} 
    Should Be Equal As Strings    ${Response.status_code}    ${Sucess_state}
    Set Test Variable             ${Response} 
To find out if I can travel
   Should Contain    ${Response.text}    clouds 
###Cenário-02
Me as a london resident
    Create Session    weather    ${URL_API}  
Want to check the weather in "${Pais}"
   ${Response}    Get Request    weather        /weather?q=${Pais}&appid=${API_Key}
    Log                           ${Response.text}  
    Should Be Equal As Strings    ${Response.status_code}    ${Sucess_state}
    Set Test Variable             ${Response} 
To find out if I can go out to watch Liverpool
    Should Contain    ${Response.text}    clouds 