Feature: My Feature

@AMAZ
Scenario: Open Browser to Specified Page
#############################################################
# Description: Opens the specified web browser to a 
#     designated page on the internet
# Inputs:
# Required:
# browser - The name associated with the web browser of choice
# dstWebPage - The page the web browser will be navigated to
#############################################################
Given I open $browser web browser
When I navigate to $dstWebPage in web browser

@wip
Scenario: Return to Amazon Homepage
#############################################################
# Description: Clicks on the Amazing Icon to return to the 
#     Amazon Homepage
# Inputs: None
# Note: You do not have to use the starter xPath below. It 
#     is only there to help you get started. 
#############################################################
#Given I click element "xPath://div[@id='nav-logo']" in web browser
Given I click element "xPath://a[@id='nav-logo-sprites']" in web browser
And I wait 2 seconds


@wip
Scenario: Search for Item
#############################################################
# Description: Searches for an item in the Amazong search bar
# Inputs: Create a variable so that you can reuse this
#     scenario for multiple items
# Note: You can search the Step Guide under the Help menu to 
#     find a step that takes a screenshot of the web browser
#############################################################

Given I type $searchPhrase in element "xPath://input[@aria-label='Search']" in web browser within 5 seconds
Once I press keys ENTER in web browser

@wip
Scenario: Navigate to Best Seller
#############################################################
# Description: Navigates to the Best Seller Menu
# 
# Inputs: None
# Note: The element for Best Seller menu is 
#     'a[text()='Best Sellers']' but that describes multiple
#     elements on the page, so we need to be more specific 
#     by first specifying a unique ancestor and then drilling
#     down into the specific element.
#############################################################
#Once I click element "xPath://div[@id= 'nav-xshop-container']//descendant::a[text()='Best Sellers']" in web browser
#Then I fail step with error message "replace this step with one that confirms we are on the Best Sellers page"
@Best Seller
Scenario: Navigate to Best Seller
Once I click element "xPath://a[text()='Best Sellers']" in web browser

@wip
Scenario: Navigate to Prime Video
#############################################################
# Description: 
# 
# Inputs: None
# Note: 
#############################################################
# First I need to click on the "ALL" menu
# Then I need to click on the "Prime Video" submenu
# Finally I need to click on the "Prime Video" sub-submenu. The exact description of this element describes multiple elements, so I will need to find a unqiue ancestor or descendent and then drill towards this element.
# Then I verify I am on the correct page

Once I click element "xPath://a[@class='hm-icon nav-sprite']" in web browser within 10 seconds
And I click element "xPath://div[text()='Amazon Prime Video']" in web browser within 5 seconds
And I click element "xPath://a[text()='All Videos']" in web browser within 5 seconds
Then I see "Prime Video" in web browser
