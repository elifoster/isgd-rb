require_relative 'lib/isgd'
require 'minitest/autorun'

describe 'ISGD' do
  rubygems = 'https://rubygems.org'.freeze
  url = ISGD.shorten(rubygems).freeze

  it 'shortens a URL' do
    expect(url).must_be_instance_of(String)
    expect(url).must_include('https://is.gd/')
  end

  it 'looks up a shortened URL' do
    lookup = ISGD.lookup(url)
    expect(lookup).must_be_instance_of(String)
    assert_equal(lookup, rubygems)
  end
end
