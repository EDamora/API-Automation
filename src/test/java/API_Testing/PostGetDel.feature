Feature: Post add new user swagger

  Background:
    Given url 'https://petstore.swagger.io/v2'
    Given header Accept = 'application/json'
    And print "====== ini adalah post request untuk add new user ======"
    * def body = {"id": 88,"username": "Damoramoraee","firstName": "Erick","lastName": "Damora","email": "string","password": "string","phone": "string","userStatus": 0}

  Scenario: Post user
    When path "/user"
    And request body
    And method post
    Then status 200
    And print response

  Scenario: get user by username
    When path "/user/Damoramoraee"
    When method get
    And status 200
    Then print response

  Scenario: delete user by username
    When path "/user/Damoramoraee"
    When method delete
    And status 200
    Then print response