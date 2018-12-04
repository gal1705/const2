require 'test_helper'

class RedescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redescription = redescriptions(:one)
  end

  test "should get index" do
    get redescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_redescription_url
    assert_response :success
  end

  test "should create redescription" do
    assert_difference('Redescription.count') do
      post redescriptions_url, params: { redescription: { image: @redescription.image, ppal_content: @redescription.ppal_content, ppal_title: @redescription.ppal_title, recompany_id: @redescription.recompany_id, second_content: @redescription.second_content, second_title: @redescription.second_title, terc_content: @redescription.terc_content, terc_title: @redescription.terc_title } }
    end

    assert_redirected_to redescription_url(Redescription.last)
  end

  test "should show redescription" do
    get redescription_url(@redescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_redescription_url(@redescription)
    assert_response :success
  end

  test "should update redescription" do
    patch redescription_url(@redescription), params: { redescription: { image: @redescription.image, ppal_content: @redescription.ppal_content, ppal_title: @redescription.ppal_title, recompany_id: @redescription.recompany_id, second_content: @redescription.second_content, second_title: @redescription.second_title, terc_content: @redescription.terc_content, terc_title: @redescription.terc_title } }
    assert_redirected_to redescription_url(@redescription)
  end

  test "should destroy redescription" do
    assert_difference('Redescription.count', -1) do
      delete redescription_url(@redescription)
    end

    assert_redirected_to redescriptions_url
  end
end
