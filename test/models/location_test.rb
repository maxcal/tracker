require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "belongs to year" do
    assert_equal Location.reflect_on_association(:year).macro, :belongs_to
  end
end
