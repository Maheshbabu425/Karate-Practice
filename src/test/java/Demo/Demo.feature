Feature: User Details

Scenario: get call test2
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response					
And match response.data.last_name != null



Scenario: get call test3
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
Given def myVar = 'test'
Then print myVar
Given def job_type = response.data.job_type
And match job_type == null

Scenario: get call test4
Given url 'https://reqres.in/api/users/4'
When method GET
Then status 200
And match response == {"data":{"id":4,"email":"eve.holt@reqres.in","first_name":"Eve","last_name":"Holt","avatar":"https://reqres.in/img/faces/4-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}