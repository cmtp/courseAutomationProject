module Pages
    class RepoPage < SitePrism::Page

        def findFileWithName(file_name)
            return has_xpath?("//a[@title='#{file_name}']")
        end
      
    end
  end