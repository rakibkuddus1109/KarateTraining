Feature: Test Suite 13
  Writing Response to File Test Suite

  Scenario: Example1
    * def lib = Java.type('misc.MyUtil')
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    * lib.writeToFile("res.json", response)
    * def res1 = read("classpath:res.json")
    * print res1
    * def res2 = get response $.data
#    * lib.writeToFile("res.json", response)
    * lib.writeToFile("res2.json", res2)
    * def res2 = read("classpath:res2.json")
    * print res1
    * print res2
    * print response.data.last_name
    * print res2.last_name
    * def name = res2.last_name
    * def json1 = {"last_name" : #(name)}
    * print json1