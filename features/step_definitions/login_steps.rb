
Given(/^I am on login page$/) do
   @app.login.load
end

When(/^I enter "([^"]*)" and "([^"]*)" as user, password$/) do |user, password|
  @app.login.doLogin user, password
end

Then(/^I am successfully login as "([^"]*)"$/) do |user_name|
  @app.userHome.profile_icon.click
  expect(@app.userHome.profile_user_name).to have_text(user_name)
end



When(/^I try to login with empty email and password$/) do
  @app.login.login_btn_click
end

Then(/^site gives warning message for empty email and password$/) do
  expect(@app.login.error_msg).to have_text ('Incorrect username or password')
end

And(/^I can't login to site$/) do
  expect(@app.login.has_login_btn?)
end

Given("I am succesfully signed in") do
  @app.login.load
  @app.login.doLogin "miguelangelcoca", "asdfgh.1"
end

When("I click on User Profile Icon") do
  @app.userHome.profile_icon.click
end

When("I click sign Out link") do
  expect(@app.userHome.sign_out_lnk).to be_visible  
  @app.userHome.sign_out_lnk.click
end

Then("I should see Sign up button") do
    expect(@app.home.sign_up_button).to be_visible
end