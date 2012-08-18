Feature: Home Page Descriptions

  As a user
  I want to view the home page
  so that I can view the various activities in the club

  Scenario: I go to the home page unauthenticated
    Given I haven't performed any action yet
    When I go to the home page
    Then I should be redirected to the "login_path" page

#  Scenario: I go to the home page authenticated
#    Given I have already authenticated
#    When I go to the home page
#    Then I will see the home page
#    And not be redirected
