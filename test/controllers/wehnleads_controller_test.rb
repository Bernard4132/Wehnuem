require 'test_helper'

class WehnleadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wehnlead = wehnleads(:one)
  end

  test "should get index" do
    get wehnleads_url
    assert_response :success
  end

  test "should get new" do
    get new_wehnlead_url
    assert_response :success
  end

  test "should create wehnlead" do
    assert_difference('Wehnlead.count') do
      post wehnleads_url, params: { wehnlead: { email: @wehnlead.email, name: @wehnlead.name, phonenumber: @wehnlead.phonenumber } }
    end

    assert_redirected_to wehnlead_url(Wehnlead.last)
  end

  test "should show wehnlead" do
    get wehnlead_url(@wehnlead)
    assert_response :success
  end

  test "should get edit" do
    get edit_wehnlead_url(@wehnlead)
    assert_response :success
  end

  test "should update wehnlead" do
    patch wehnlead_url(@wehnlead), params: { wehnlead: { email: @wehnlead.email, name: @wehnlead.name, phonenumber: @wehnlead.phonenumber } }
    assert_redirected_to wehnlead_url(@wehnlead)
  end

  test "should destroy wehnlead" do
    assert_difference('Wehnlead.count', -1) do
      delete wehnlead_url(@wehnlead)
    end

    assert_redirected_to wehnleads_url
  end
end
