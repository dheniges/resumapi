class Education < ActiveRecord::Base
  include ResumeJson

  attr_accessible :degree, :graduation_date, :program_title, :school_name, :start_date, 
  				  :subject, :applicant_id, :applicant

  # Associations
  belongs_to :applicant

  # Validations
  validates_presence_of :graduation_date, :applicant_id, :degree
end
