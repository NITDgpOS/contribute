module Contribute
  class Finder
    def intialize
      token_file = YAML::load_file(File.expand_path('token.yml', __dir__))
      @token = token_file[:token]
      @finder = Octokit::Client.new access_token: token
    end

    def stars
      finder.search_repositories('stars:1000')
    end

    private
    attr_reader :token, :finder
  end
end