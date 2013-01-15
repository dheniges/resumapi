class Skill < ActiveRecord::Base
  include ResumeJson

  # attr_accessible :description, :name, :score, :years_experience, :applicant_id
  attr_accessible :name, :description, :applicant_id, :applicant


  # Associations
  belongs_to :applicant

  # Validations
  # We only require a description since a skill description is essentially
  # a resume bullet point. The skill can have a name, but it's optional
  validates_presence_of :description, :applicant_id

  # ---------------------
  # Instance Methods
  # ---------------------

  # Formats a nice string version of the skill object.
  # For a regular html app this would be handled at
  # the display layer but when building up JSON/XML
  # strings I usually prefer skipping the view layer and
  # rendering json straight from the controller
  # 
  # This method is not currently used
  def to_s
    (name.blank?) ? description : "#{name}: #{description}"
  end

end