require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  setup do
    @person = people(:one)
  end

  test "has many years" do
    assert_equal Person.reflect_on_association(:years).macro, :has_many
  end
end
