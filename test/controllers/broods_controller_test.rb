require 'test_helper'

class BroodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brood = broods(:one)
  end

  test "should get index" do
    get broods_url
    assert_response :success
  end

  test "should get new" do
    get new_brood_url
    assert_response :success
  end

  test "should create brood" do
    assert_difference('Brood.count') do
      post broods_url, params: { brood: { max_size: @brood.max_size, min_size: @brood.min_size, roster_id: @brood.roster_id } }
    end

    assert_redirected_to brood_url(Brood.last)
  end

  test "should show brood" do
    get brood_url(@brood)
    assert_response :success
  end

  test "should get edit" do
    get edit_brood_url(@brood)
    assert_response :success
  end

  test "should update brood" do
    patch brood_url(@brood), params: { brood: { max_size: @brood.max_size, min_size: @brood.min_size, roster_id: @brood.roster_id } }
    assert_redirected_to brood_url(@brood)
  end

  test "should destroy brood" do
    assert_difference('Brood.count', -1) do
      delete brood_url(@brood)
    end

    assert_redirected_to broods_url
  end
end
