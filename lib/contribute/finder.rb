module Contribute
  class Finder
    def initialize(query = '')
      @finder_client = Contribute::Client.new.octokit
      @query = query
    end

    def language(name)
      query << " language:#{name}"
      self
    end

    def stars(lo = '*', hi = '*')
      query << " stars:#{lo}..#{hi}"
      self
    end

    def forks(lo = '*', hi = '*')
      query << " forks:#{lo}..#{hi}"
      self
    end

    def find
      results = finder_client.search_repositories query
      puts results['items'].map { |r| r['full_name'] }
    end

  private

    attr_reader :finder_client, :query
  end
end
