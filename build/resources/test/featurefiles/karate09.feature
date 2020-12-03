Feature: Karate Test Suite 9
  REST API testing using URL & Path

  Scenario: URL & Path usage test case Test Case 1
    Given url "https://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    And match response.page == 1

  Scenario: URL & Path usage test case Test Case 2
    Given url "https://reqres.in"
    And path "/api/users"
    And param page = 2
    When method GET
    Then status 200
    And match response.page == "##"