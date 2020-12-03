Feature: Karate Test Suite 12
  Calling Static/Non-static variable of Java Class

  Scenario: Static variable test case
    * def constants = Java.type('misc.Automationconstants')
    * print constants.devUrl
    * print constants.getDevUrl()

  Scenario: Non-static variable test case
    * def env1 =
    """
    function()
    {
    var tmp = Java.type('misc.Automationconstants');
    var constants = new tmp();
    return constants.qaUrl;
    }
    """
    * print env1()
    * def qaUrl = call env1
    * print qaUrl

  Scenario: Non-static variable test case shortcut
    * def env1 =
    """
    function()
    {
    return (new (Java.type('misc.Automationconstants'))).qaUrl;
    }
    """
    * print env1()
    * def qaUrl = call env1
    * print qaUrl
