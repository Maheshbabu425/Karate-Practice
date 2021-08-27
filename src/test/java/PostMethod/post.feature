Feature: Post method


Background:
* def users = read('jsonPayload.json')
* url 'https://reqres.in/api'

Scenario: By using json payload, headers and params for post method
Given path 'users'
And request users[0]
And header Content-Type = 'application/json'
And header Accept = 'application/json'
And param delay = 3
When method POST
Then status 201

Scenario: post method for register
Given path 'register'
And request users[2]
When method POST
Then status 200
Then print  '--- Maheshbabu', response

Scenario: post method for login
Given path 'login'
And request users[1]
When method POST
Then status 200
Then print response

Scenario: post method for login
Given path 'login'
And request users[3]
When method POST
Then status 400
Then print response



