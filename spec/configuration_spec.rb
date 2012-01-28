require 'spec_helper'

class ConfigurationSpec < MiniTest::Spec
  describe Redis do
    it "should connect successfuly" do
      Recommendable.redis.ping.must_equal "PONG"
    end
  end
end