Feature: Karate DB testing test suite
  Datbase interaction

  Background: DB Init
    * def db = Java.type('misc.MyDbUtil')

  Scenario: Select statement test case
    * def rows = db.selectStatement('select * from tools')
    * print rows
    * match rows contains "Karate"

  Scenario: Insert statement test case
    * def res = db.insertStatement("insert into tools values(20,'Sample','ABC')")
    * print res
    * match res == "Success"

  Scenario: Update statement test case
    * def rowsaffected = db.updateStatement("update tools set toolName = 'Updated' where toolId = 20")
    * assert rowsaffected >= 1

  Scenario: Delete statement test case
    * def rowsaffected = db.deleteStatement("delete from tools where toolId = 20")
    * assert rowsaffected >= 1