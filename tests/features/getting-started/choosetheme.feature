Feature: Choose Theme
    In order to start using the Trevelin Theme
    As an admin user
    I need to be able to change the default configuration settings

 Scenario: Change theme from dressprow to trevelin
         Given I have logged in as an administrator
         Given I mouse over "Config"
         And I follow "Settings"
         Then I should be on "/lists/admin/?page=configure"
         Given I am on "/lists/admin/?page=configure&id=UITheme"
         Given I select "phplist-ui-bootlist" from "values[UITheme]"
         When I press "Save changes"
         Then I should see "phplist-ui-bootlist"
         #Element not clickable at point
         #Given I follow "logout"
         Given I am on "/lists/admin/?page=logout"
         And I fill in "login" with a valid username
         And I fill in "password" with a valid password
         And I press "Continue"
         Then The div#context-menu.block.menu color should be black
        
