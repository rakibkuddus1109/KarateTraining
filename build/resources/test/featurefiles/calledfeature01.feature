Feature: Called Test Suite 1
  Called feature testing

  Scenario: URL & Path usage test case Test Case 1
    Given url "https://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    And match response.page == 1