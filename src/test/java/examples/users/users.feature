Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://127.0.0.1:5000/'

  Scenario: Testing a POST endpoint with request body
    Given path 'users'
    And request {name: harley, email: 'harley@gmail.com', password: 'henry'}
    When method POST
    Then status 200
    And match $ == 'User Created Successfully'

  Scenario: Deleting the  user by id
    Given path 'user', 5
    When method delete
    Then status 200

  Scenario: get all users
    Given path 'users'
    When method get
    Then status 200

  Scenario: getting user by id
    Given path 'user', 2
    When method get
    Then status 200

  Scenario: updating user by id
    Given path 'user', 13
    And request {name: 'mary', email: 'mary@gmail.com', password: 'mary'}
    When method put
    Then status 200

