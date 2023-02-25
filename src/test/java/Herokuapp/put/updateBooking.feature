Feature: put Booking

  Scenario: UpdateBooking
    * call read("../posts/createToken.feature@Createtoken")
    * call read("../posts/createBooking.feature@CreateBooking")
    * def tokenValue = token
    * def cookieValue = 'Token=' + '"' + tokenValue + '"'
    * print 'Valor interno del token:', token
    * print 'Valor de la cookie:', cookieValue
    * configure headers = { Accept: 'application/json' , Content-Type: 'application/json', Cookie: #(cookieValue), Authorization: 'Basic YWRtaW46cGFzc3dvcmQxMjM='}
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + bookingid
    And request {"firstname": "James","lastname": "Brown","totalprice": 111,"depositpaid": true,"bookingdates": {"checkin": "2018-01-01","checkout": "2019-01-01"},"additionalneeds": "Breakfast"}
    When method put
    Then status 200

  Scenario: UpdateBooking without authorization
    * call read("../posts/createToken.feature@Createtoken")
    * call read("../posts/createBooking.feature@CreateBooking")
    * def token1 = karate.get('token')
    * def cookieValue = 'Token=' + '"' + token1 + '"'
    * print 'Valor interno del token:', token
    * print 'Valor de la cookie:', cookieValue
    * configure headers = { Accept: 'application/json' , Content-Type: 'application/json', Cookie: #(cookieValue)}
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + bookingid
    And request {"firstname": "James","lastname": "Brown","totalprice": 111,"depositpaid": true,"bookingdates": {"checkin": "2018-01-01","checkout": "2019-01-01"},"additionalneeds": "Breakfast"}
    When method put
    Then status 403