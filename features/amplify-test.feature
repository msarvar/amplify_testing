@javascript
Feature:
  Testing amplify functionality on major retail stores

  Scenario Outline: Press 'Claim' button
    Given I go to retailer "<Site>"
    Then I should see claim dropdown
    When I press claim button
    Then I should see confirmation message
    Examples:
      | Site                              |
      | http://www.ralphlauren.com        |
      | http://www.jcpenney.com/          |
      | http://www.stagestores.com/store  |
      | http://us.levi.com/home/index.jsp |
      | http://www.ashford.com/           |
      | http://www.factoryoutletstore.com |
      | http://www.dell.com/              |
      | http://www.tigerdirect.com/       |
      | http://www.bjs.com/               |
      | http://www.autozone.com/autozone/ |
      | http://www.expedia.com/           |
      | http://www.priceline.com/         |
      | http://buy.com                    |
      | http://skymall.com                |
      | http://lowes.com                  |
      | http://newegg.com                 |
      | http://t-mobile.com               |
      | http://gilt.com                   |
      | http://staples.com                |
