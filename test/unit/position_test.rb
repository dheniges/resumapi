require 'test_helper'

class PositionTest < ActiveSupport::TestCase

  test "validations should work" do
    position = Position.new
    assert !position.valid?, 'Position should be invalid with no attributes'
    position.company = 'A Company'
    position.title = 'CEO'
    position.start_date = Date.today
    position.end_date = Date.today # Short-lived position
    position.applicant_id = applicants(:dirk).id
    assert position.valid?, 'Position should be valid with required fields'
  end

  test "associations should work" do
    assert positions(:one).applicant.is_a?(Applicant), 'Position should have an applicant'
  end

end
