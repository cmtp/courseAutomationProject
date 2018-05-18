
  module PageObjects
    class Application
      def initialize
        @pages = {}
      end

      def home
        @pages[:home] ||= Pages::HomePage.new
      end

      def login
        @pages[:login] ||= Pages::LoginPage.new
      end

      def UserHome
        @pages[:UserHome] ||= Pages::UserHome.new
      end

      def RepoPage
        @pages[:RepoPage] ||= Pages::RepoPage.new
      end

    end
  end
