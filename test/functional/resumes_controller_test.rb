require 'test_helper'

class ResumesControllerTest < ActionController::TestCase
  
  test "can get resume" do
    get :show, id: applicants(:dirk)
    assert_response :success
  end

end
