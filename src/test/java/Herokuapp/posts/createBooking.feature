Feature: post booking in herokuapp

  @CreateBooking
  Scenario: post a booking
    * configure headers = { Accept: 'application/json' , Content-Type: 'application/json' }
    Given url "https://restful-booker.herokuapp.com" + "/booking"
    And request {"firstname": "Jim","lastname": "Brown","totalprice": 111,"depositpaid": true,"bookingdates": {"checkin": "2018-01-01","checkout": "2019-01-01"},"additionalneeds": "Breakfast"}
    When method post
    Then status 200
    And def bookingid = $.bookingid

