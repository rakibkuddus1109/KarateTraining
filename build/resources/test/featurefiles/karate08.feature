Feature: Karate Test Suite 8
  REST API end to end testing

  Scenario: Create fetch update delete employee test

    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Rakib","salary":"891","age":"32"}
    When method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "Rakib"
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Rakib","salary":"891","age":"35"}
    When method PUT
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method DELETE
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200