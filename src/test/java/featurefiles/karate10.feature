Feature: Karate Test Suite 10
  REST API testing using data driven approach

  @ddt
  Scenario Outline: Data driven testing test case Test Case 1
    Given url "https://reqres.in"
    And path "/api/users?page=<pno>"
    When method GET
    Then status 200
    And match response.page == "##"

    Examples:
      | pno |
      | 1 |
      | 2 |
      | 3 |
      | 4 |
      | 5 |