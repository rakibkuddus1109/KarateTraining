Feature: Karate config test suite
  Reading global variable from karate-config.js

  Scenario: Test case 1
    Given url baseUrl
    And path listUsers
    When method GET
    Then status 200