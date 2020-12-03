Feature: Karate Test Suite 2
  This feature file contains scenario on how to validate JSON content

  Scenario: JSON test case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON test case 2
    Given def json =
    """
    {
      "id" : "101",
      "tool": { "name":"Karate", "version":"0.9.6"}
    }
    """
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}