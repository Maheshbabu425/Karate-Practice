Feature: All User Details


Scenario: All user details by get method

* def expectedOutput = read('details.json')

Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And match response == expectedOutput
Then print response

Scenario: Comparing id of user2
* def user2 = read('user2.json')
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And match response == user2
Then print response
And  match response.data.id == 2
And match response.support.url == "https://reqres.in/#support-heading"

Scenario: Ignoring email for user3
* def user3 = read('user3.json')
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And match response == user3
Then print response
