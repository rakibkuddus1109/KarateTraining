Feature: Karate Test Suite 7
  This feature file contains scenario on testing REST API with JSON output

  @soap
  Scenario: REST API Testing with JSON o/p test case 1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0]
    * print response.data[0].employee_name
    * match response.data[0].employee_name contains "Tiger"
    * match responseType == 'json'
    * assert responseTime <= '2000'