module Contribute
  module ExtendedSort
    SORT_OPTIONS = %w(name size watchers issues).freeze

  module_function

    def sort_by!(repos, field)
      raise error_msg unless SORT_OPTIONS.include? field
      repos.sort! { |a, b| a.send(field) <=> b.send(field) }
    end

    def error_msg
      "sort field argument is not valid. Valid inputs: #{SORT_OPTIONS.join(', ')}"
    end
  end
end
