Feature: Calling Test Suite 1

  Scenario: Calling test case 01
    * def result = call read('calledfeature01.feature')
    * print result
    * match result.responseType == "json"
    * match result.responseHeaders.Transfer-Encoding[0] == "chunked"
    * match result.response.data[0].name == "cerulean"