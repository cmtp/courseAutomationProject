Then("I should see {string} listed among project files") do |string|
    expect(@app.RepoPage.findFileWithName(string)).to eq(true)
end
  