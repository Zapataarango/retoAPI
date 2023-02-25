Feature: Getters

  Scenario: Get booking
    * call read("../post/createBooking.feature@CreateBooking")
    * configure headers = { Accept: 'application/json' , Content-Type: 'application/json' }
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + bookingid
    When method get
    Then status 200

    Scenario: Incorrect url
      * configure headers = { Accept: 'application/json' , Content-Type: 'application/json' }
      * def id = '876'
      Given url "https://restful-booker.herokuapp.com" + "/booking/" + id
      When method get
      Then status 404