require 'test_helper'

class FmRepTest < ActiveSupport::TestCase

  def setup
    @valid_rep = fm_reps(:vera_the_valid_rep)
    @invalid_rep = fm_reps(:johnny_bad_number)
  end

  test "FmRep can be created with valid phone number" do
    assert @valid_rep.valid?
  end

  test "FmRep will not be saved with invalid phone number" do
    assert_not @invalid_rep.valid?
  end

end
