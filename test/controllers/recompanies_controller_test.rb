require 'test_helper'

class RecompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recompanies_index_url
    assert_response :success
  end

end
