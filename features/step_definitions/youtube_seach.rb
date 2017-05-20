

Given(/^I am on the YouTube home page$/) do
  visit 'https://www.youtube.com'
end

When(/^I search for "([^"]*)"$/) do |search_term|
  fill_in 'search_query', with: search_term
  click_on 'search-btn'
end

Then(/^videos of large rodents are returned$/) do
  # sleeping since results now are populated using ajax, and aren't ready when the page loads.
  sleep(2)
  expect(page).to have_text 'largest rodent'
end
