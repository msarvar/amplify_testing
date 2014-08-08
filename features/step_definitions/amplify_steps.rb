require 'debugger'

Given(/^I go to retailer "(.*?)"$/) do |site|
  visit site
end

Then(/^I should see claim dropdown$/) do
  page.should have_selector('.fhundf-dialog')
  page.find('.fhundf-dialog').should be_visible
end

When(/^I press claim button$/) do
  click_link("Claim")
end

Then(/^I should see confirmation message$/) do
  sleep 2
  page.should have_selector('.fhundf-simple-notification', :text => "Now you can earn points for your purchase on ")
end
