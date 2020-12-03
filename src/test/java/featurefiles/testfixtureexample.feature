Feature: Test fixture test suite
  Demo using background, after scenario, after feature

  Background: Before Scenario
    * print "Before Scenario"
    * configure afterScenario =
    """
    function ()
    {
    karate.log("From after scenario");
    }
    """
    * configure afterFeature =
    """
    function ()
    {
    karate.log("From after feature");
    }
    """

    Scenario: Test case 1
      * print "From Test case 1"

    Scenario: Test case 2
      * print "From Test case 2"
      * print "CI Demo"