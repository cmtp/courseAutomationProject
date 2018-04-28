Then("I should see {string} listed among project files") do |string|
    expect(@app.RepoPage.findFileWithName(string)).to eq(true)
end

Then("I {string} {string} listed among project files") do |expectancy, value|
    require 'pry'
    if expectancy == "true" 
        expect(@app.RepoPage.findFileWithName(value)).to eq(true)
    else
        expect(@app.RepoPage.findFileWithName(value)).to eq(false)
    end
end
