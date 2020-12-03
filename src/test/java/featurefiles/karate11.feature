Feature: : Karate Test Suite 11
  Demo of using javascript functions within scenario

  Scenario: Javascript Test Case 1
    * def fn1 = function() { return 123; }

    * def fn2 =
    """
    function(id)
    {
    karate.log(id);
    }
    """
    * print fn1()
    * print fn2("Hi there!")