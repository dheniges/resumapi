require 'test_helper'

class SkillTest < ActiveSupport::TestCase

  test "string conversion should work" do
    [skills(:one), skills(:two)].each do |skill|
      assert skill.to_s.is_a?(String), "Skill #{skill.id} should convert to string"
    end
  end

  test "validations should work" do
    skill = Skill.new
    assert !skill.valid?, "Skill should be invalid with no attributes"
    skill.description = 'skill description'
    skill.applicant_id = applicants(:dirk).id
    assert skill.valid?, 'Skill should be valid with description and applicant'
  end

  test "associations should work" do
    assert skills(:one).applicant.is_a?(Applicant), 'Skill should have an applicant'
  end

end
