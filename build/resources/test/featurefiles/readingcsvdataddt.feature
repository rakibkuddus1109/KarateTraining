Feature: Test Suite 14
  To get data from external CSV for data driven testing

  Scenario Outline: CSV Data Driven Testing
    * print "<custid>, <custname>, <age>"
    * def json1 = {"cust_name" : <custname>}
    * print json1
    Examples:
      | read('classpath:data.csv') |