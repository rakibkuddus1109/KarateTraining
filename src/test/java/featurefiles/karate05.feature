Feature: Karate Test Suite 5
  This feature file contains scenario on testing REST API

  @soap
  Scenario: REST API Testing test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    And match response contains "104"
    And match response //string contains "104"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == 'xml'
    And assert responseTime <= '2000'