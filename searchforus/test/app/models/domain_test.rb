require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class DomainTest < Test::Unit::TestCase
  context "Domain Model" do
    should 'construct new instance' do
      @domain = Domain.new
      assert_not_nil @domain
    end
  end
end
