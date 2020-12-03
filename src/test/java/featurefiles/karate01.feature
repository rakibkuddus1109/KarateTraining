Feature: Karate test suite 1
  Demo of using variables in scenario

  Scenario: Karate test case 1
    Given def a = 10
    And def b = 20

    When def c = a + b
    Then assert c == 30
    And print "c =", c
    And karate.log("--:Test1 is ending here:--")

  Scenario: Karate test case 2
    Given def a = 20
    * def b = 20

    When def c = a + b
    Then assert c == 40
    * print "c =", c
    * karate.log("--:Test2 is ending here:--")

  Scenario: Karate test case 3
    * def a = 100
    * def b = 200

    * def c = a + b
    * assert c == 300
    * print "c =", c
    * karate.log("--:Test3 is ending here:--")