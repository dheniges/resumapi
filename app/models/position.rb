class Position < ActiveRecord::Base
  include ResumeJson

  attr_accessible :company, :current, :description, :end_date, :start_date, :title, 
                  :applicant_id, :applicant

  # Associations
  belongs_to :applicant

  # Validations
  validates_presence_of :company, :title, :start_date, :end_date, :applicant_id

end
