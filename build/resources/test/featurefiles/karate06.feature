Feature: Karate Test Suite 6
  This feature file contains scenario on testing SOAP API with external payload source

  @soap
  Scenario: SOAP API Testing with external file test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
#    Below variable is to pass the value in external payload file
    And def temp = 50
#    And request read ('soapapiinput.xml')
    And request read ('../payloaddata/soapapiinput.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    And match response //CelsiusToFahrenheitResult == "122"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == 'xml'
    And assert responseTime <= '2000'