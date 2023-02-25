Feature: Create a booking in herokuapp

  Scenario: CreateBooking
    When send the request for "bookingA" in "/booking"
    Then validate the status code is 200