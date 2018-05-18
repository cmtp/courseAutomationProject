When("I select {string} from your repositories") do |string|
    @app.UserHome.clickRepowithName(string)
end
  