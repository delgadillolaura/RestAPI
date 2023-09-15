Feature: Employees endpoint
  Background: Employees endpoints should allow to get, create, update and delete employees

    #GET
    @getAll
    Scenario: /employees should return all the employees
      Given I perform a GET to the employees endpoint
      Then I verify status code 200 is returned
      And I verify that the body does not have size 0

    #GET BY ID
    @getByExistentId
    Scenario: /employee/{id} should return an employee
      Given I perform a GET to the employees endpoint with Id "1"
      Then I verify status code 200 is returned
      And I verify that the body does not have size 0

    @getByNonExistentId
    Scenario: /employee/{id} should return error code
      Given I perform a GET to the employees endpoint with Id "100"
      Then I verify status code 404 is returned
      And I verify the message "Employee not found." is displayed

    #CREATE
    @postWithValidData
    Scenario: /create should create an employee
      Given I perform a POST to the create endpoint with the following data
        | Diego | 3500 | 26 |
        Then I verify status code 200 is returned
      And I verify that the body does not have size 0
      And I verify the following data in the body response
        | Diego | 3500 | 26 |

    @postWithInvalidData
    Scenario: /create with invalid data should return an error code
      Given I perform a POST to the create endpoint with the following data
        | 34 | dafsd | kgh |
      Then I verify status code 400 is returned
      And I verify the message "Invalid data provided." is displayed

    #UPDATE
    @putWithValidData
    Scenario: /put should update an employee
      Given I perform a PUT to the update endpoint with Id "4" and the following data
        | Pedro Lopez | 1000 | 28 |
      Then I verify status code 200 is returned
      And I verify that the body does not have size 0
      And I verify the following data in the body response
        | Pedro Lopez | 1000 | 28 |
      And I verify the message "Successfully! Record has been updated." is displayed

    @putWithEmptyFields
    Scenario: /put with empty fields should return an error code
      Given I perform a PUT to the update endpoint with Id "4" and the following data
        |  |  | 28 |
      Then I verify status code 400 is returned
      And I verify the message "Empty fields are not allowed." is displayed

    #DELETE
    @deleteExistentId
    Scenario: /delete should delete an employee
      Given I perform a DELETE to the delete endpoint with Id "4"
      Then I verify status code 200 is returned
      And I verify that the employee with Id "4" is deleted
      And I verify the message "Successfully! Record has been deleted" is displayed

    @deleteNonExistentId
    Scenario: /delete non existent id should return an error code
      Given I perform a DELETE to the delete endpoint with Id "58"
      Then I verify status code 404 is returned
      And I verify the message "Employee not found." is displayed

    @deleteInvalidId
    Scenario: /delete invalid id should return an error code
      Given I perform a DELETE to the delete endpoint with Id "asdfdsf"
      Then I verify status code 404 is returned
      And I verify the message "Invalid ID format." is displayed