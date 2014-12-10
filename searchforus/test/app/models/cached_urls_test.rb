require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class CachedUrlTest < Test::Unit::TestCase
  context "CachedUrl Model" do
    should 'construct new instance' do
      @cached_url = CachedUrl.new
      assert_not_nil @cached_urls
    end
  end
end
