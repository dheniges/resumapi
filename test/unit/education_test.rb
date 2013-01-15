require 'test_helper'

class EducationTest < ActiveSupport::TestCase

  test "validations should work" do
    education = Education.new
    assert !education.valid?, 'Education should be invalid with no attributes'
    education.graduation_date = Date.today
    education.applicant = applicants(:dirk)
    education.degree = 'New Degree'
    assert education.valid?, 'Education should be valid with required fields'
  end

  test "associations should work" do
    assert educations(:one).applicant.is_a?(Applicant), 'Education should have an applicant'
  end

end
