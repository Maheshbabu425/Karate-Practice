Feature: POST method 

Scenario: By using json payload, headers and params for post method
Given url 'https://reqres.in/api/users'
And request {"name": "morpheus",  	"job": "leader"}
And headers {Content-Type : 'application/json', Accept : 'application/json'}
And param delay = 3
When method POST
Then status 201
