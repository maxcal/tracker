require 'test_helper'

class YearTest < ActiveSupport::TestCase
  test "belongs to person" do
    assert_equal Year.reflect_on_association(:person).macro, :belongs_to
  end
  test "has many locations" do
    assert_equal Year.reflect_on_association(:locations).macro, :has_many
  end
end
