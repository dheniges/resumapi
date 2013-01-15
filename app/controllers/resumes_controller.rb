class ResumesController < ApplicationController

  # NOTE: All output by the resume_controller is in json, even if json
  # is not explicitly requested.

  # GET a resume resource
  def show
    # Find the applicant with AR::where so we'll get an empty array if no result is
    # found instead of raising an error we have to catch.
    applicant = Applicant.where(:id => params[:id]).first
    render :json => {:error => 'Invalid applicant id'} and return unless applicant
    
    resume = applicant.resume
    resume[:info][:quote] = get_chuck_quote(applicant) if params[:with_quote]

    render :json => resume
  end

private

  # Easter Egg! If requested with a quote, add a "quote" field to the applicant
  # resume with a Chuck Norris quote. We'll use the Chuck Norris API
  # Expects an object with a first_name and last_name methods
  def get_chuck_quote(person)
    require 'net/http'
    url = "http://api.icndb.com/jokes/random?firstName=#{person.first_name}&lastName=#{person.last_name}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    ActiveSupport::JSON.decode(response.body)['value']['joke']
  end

end
