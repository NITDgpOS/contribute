# frozen_string_literal: true
module Contribute
  # Class to find repos with stars
  class Finder

    token_file = YAML.load_file(File.expand_path("../../.token.yml", __dir__))
    @token = token_file["token"]
    @finder = Octokit::Client.new :access_token => @token

    class << self
      def stars
        results = @finder.search_repositories(" stars:>10000")
        puts results["items"].map { |r| r["full_name"] }
      end
    end

  private

    attr_reader :token, :finder
  end
end
