require 'test_helper'

class DescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @description = descriptions(:one)
  end

  test "should get index" do
    get descriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_description_url
    assert_response :success
  end

  test "should create description" do
    assert_difference('Description.count') do
      post descriptions_url, params: { description: { company_id: @description.company_id, image: @description.image, ppal_content: @description.ppal_content, ppal_title: @description.ppal_title, second_content: @description.second_content, second_title: @description.second_title, terc_content: @description.terc_content, terc_title: @description.terc_title } }
    end

    assert_redirected_to description_url(Description.last)
  end

  test "should show description" do
    get description_url(@description)
    assert_response :success
  end

  test "should get edit" do
    get edit_description_url(@description)
    assert_response :success
  end

  test "should update description" do
    patch description_url(@description), params: { description: { company_id: @description.company_id, image: @description.image, ppal_content: @description.ppal_content, ppal_title: @description.ppal_title, second_content: @description.second_content, second_title: @description.second_title, terc_content: @description.terc_content, terc_title: @description.terc_title } }
    assert_redirected_to description_url(@description)
  end

  test "should destroy description" do
    assert_difference('Description.count', -1) do
      delete description_url(@description)
    end

    assert_redirected_to descriptions_url
  end
end
