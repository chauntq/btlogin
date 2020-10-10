Feature: Login Functionality
#Create at : 02:10:2020
#Create bt : Dim Nguyen
In order to ensure login Functionality works,
I want to run the cucumber test to verify it is working
Background: 
Given the login pge is opened successfull

 
Scenario: login valid
    When input valid username "tomsmith" and valid password "SuperSecretPassword!"
    Then the message "You logged into a secure area!"should be displayed

Scenario Outline: login valid
    When input "<username>" and "<password>"
    Then the message  "<message>" should be displayed

Examples: case

    |username      |password               |message                    |
    |chauchau      |SuperSecretPassword!   |Your username is invalid!  |
    |123@123       |123                    |Your username is invalid! |
    |tomsmith      |123                    |Your password is invalid!  |
