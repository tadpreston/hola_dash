Given /^I haven't performed any action yet$/ do
end

When /^I go to the home page$/ do
  visit root_url
end

Then /^I should be redirected to the "(.*?)" page$/ do |url|
  page.driver.request.env['HTTP_REFERER'].should_not be_nil
  page.driver.request.env['HTTP_REFERER'].should_not == page.current_url
  step %Q(I should be on the #{url} page)
end

Then /^I should be on the login_path page$/ do
  page.current_url.should == sign_in_url
end
