module Contribute
  class Finder
    Repo = Struct.new(:full_name, :name, :size, :watchers, :issues)

    SORT_OPTIONS = %w(created updated stars forks).freeze
    ORDER_OPTIONS = %w(desc asc).freeze

    def initialize(query = '', options = {})
      @finder_client = Contribute::Client.new.octokit
      @query = query
      @options = options
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

    def sort_by(field)
      raise error_msg('sort', SORT_OPTIONS) unless SORT_OPTIONS.include? field
      options[:sort] = field
      self
    end

    def order(type)
      raise error_msg('order', ORDER_OPTIONS) unless ORDER_OPTIONS.include? type
      options[:order] = type
      self
    end

    def find
      results = finder_client.search_repositories query, options
      results['items'].map do |r|
        Repo.new(r['full_name'], r['name'], r['size'], r['watchers'], r['open_issues'])
      end
    end

  private

    attr_reader :finder_client, :query, :options

    def error_msg(type, valid_otions)
      "'#{type}' field argument is not valid. Valid inputs: #{valid_otions.join(', ')}"
    end
  end
end
