Feature: post user in herokuapp

  @Createtoken
  Scenario: post a user
    Given url "https://restful-booker.herokuapp.com" + "/auth"
    And request {"username": "admin", "password": "password123"}
    When method post
    Then status 200
    And def token = $.token

  Scenario: incorrect Json format
    Given url "https://restful-booker.herokuapp.com" + "/auth"
    And request {"username":, "password": "password123"}
    When method post
    Then status 200
    And match $ == {"reason":"Bad credentials"}