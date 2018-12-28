require 'test_helper'

class BroodlingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broodling = broodlings(:one)
  end

  test "should get index" do
    get broodlings_url
    assert_response :success
  end

  test "should get new" do
    get new_broodling_url
    assert_response :success
  end

  test "should create broodling" do
    assert_difference('Broodling.count') do
      post broodlings_url, params: { broodling: { base_points: @broodling.base_points, battlefield_role: @broodling.battlefield_role, name: @broodling.name, stats: @broodling.stats } }
    end

    assert_redirected_to broodling_url(Broodling.last)
  end

  test "should show broodling" do
    get broodling_url(@broodling)
    assert_response :success
  end

  test "should get edit" do
    get edit_broodling_url(@broodling)
    assert_response :success
  end

  test "should update broodling" do
    patch broodling_url(@broodling), params: { broodling: { base_points: @broodling.base_points, battlefield_role: @broodling.battlefield_role, name: @broodling.name, stats: @broodling.stats } }
    assert_redirected_to broodling_url(@broodling)
  end

  test "should destroy broodling" do
    assert_difference('Broodling.count', -1) do
      delete broodling_url(@broodling)
    end

    assert_redirected_to broodlings_url
  end
end
