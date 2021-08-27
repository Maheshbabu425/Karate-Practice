Feature: Calling 2 json files

 Scenario: User 2 details by GET method
 * def user2and3 = read('user2and3.json')
 Given url 'https://reqres.in/api/users/2'
 When method GET
 Then status 200
 And match response == user2and3[0]
 Then print response
