require 'test_helper'

class ApplicantTest < ActiveSupport::TestCase
  
  def setup
    @me = applicants(:dirk)
  end

  test "validations should work" do
    applicant = Applicant.new
    assert !applicant.valid?, 'Applicant should not be valid without required fields'
    applicant.first_name = 'Dirk'
    applicant.last_name = 'Heniges'
    assert applicant.valid?, 'Applicant with first and last name should be valid'
  end

  test "associations should work" do
    Applicant::SECTIONS.each do |section|
      assert @me.send(section).is_a?(Array), "#{section} is not a valid association"
    end
  end

  test "shortcuts should work" do
    assert @me.full_name.is_a?(String), 'Expected string response from full_name'
    assert @me.dob.is_a?(String), 'Expected string date response from dob'
  end

  test "should retrieve resume" do
    resume = @me.resume
    assert resume.is_a? Hash
    Applicant::SECTIONS.map{ |section| 
      assert !resume[section.to_sym].nil?, "Resume should have #{section} section"
    }
  end

end
