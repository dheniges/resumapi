class Applicant < ActiveRecord::Base
  include ResumeJson

  attr_accessible :address1, :address2, :birth_date, :city, :email, :first_name, 
                  :last_name, :phone, :state, :zip

  # Associations
  has_many :skills
  has_many :educations
  has_many :positions

  # Validations
  validates_presence_of :first_name, :last_name

  # Class Constants
  # Define the resume sections so we can easily add more.
  # Sections must be a valid call on an Applicant instance as
  # the section is evaluated with applicant.send(section)
  SECTIONS = %w(positions skills educations)

  # ---------------------
  # Instance Methods
  # ---------------------

  # These instance methods aren't used but are examples of shortcuts
  # I would add and use as the app becomes more complex

  # Get the applicant's full name
  def full_name
    "#{first_name} #{last_name}"
  end

  # Shortcut for getting the birth_date
  def dob
  	birth_date
  end

  # Returns a resume hash ready for processing into json
  def resume
    resume = {}
    resume[:info] = self
    self.class::SECTIONS.each do |section|
      resume[section.to_sym] = self.send(section) if self.respond_to? section
    end
    resume
  end

end
