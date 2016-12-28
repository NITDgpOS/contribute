# frozen_string_literal: true
module Contribute
  # Class to find repos with stars
  class Client
    attr_reader :octokit

    def initialize
      token_file = YAML.load_file(File.expand_path("../../.token.yml", __dir__))
      token = token_file["token"]
      @octokit = Octokit::Client.new :access_token => token
    end
  end
end
