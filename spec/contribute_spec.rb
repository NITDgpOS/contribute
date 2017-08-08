require 'spec_helper'

describe Contribute do

  it 'has a version number' do
    expect(Contribute::VERSION).not_to be nil
  end

  it 'has a .find method', :vcr do
    results = Contribute::Finder.new('language:ruby').find
    assert_requested :get, 'https://api.github.com/search/repositories?q=language:ruby'
    expect(results).not_to be_empty
    expect(results).to be_kind_of Array
  end
end
