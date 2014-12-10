require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class Searchforus::App::DomainsHelperTest < Test::Unit::TestCase
  context "Searchforus::App::DomainsHelper" do
    setup do
      @helpers = Class.new
      @helpers.extend Searchforus::App::DomainsHelper
    end

    should "return nil" do
      assert_equal nil, @helpers.foo
    end
  end
end
