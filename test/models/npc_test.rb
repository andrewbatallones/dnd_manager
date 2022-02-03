require "test_helper"

class NpcTest < ActiveSupport::TestCase
  test "npc_count" do
    assert_equal 1, Npc.count
  end
end
