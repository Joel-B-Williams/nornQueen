require 'test_helper'

class SpecialRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @special_rule = special_rules(:one)
  end

  test "should get index" do
    get special_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_special_rule_url
    assert_response :success
  end

  test "should create special_rule" do
    assert_difference('SpecialRule.count') do
      post special_rules_url, params: { special_rule: { name: @special_rule.name, ruleholder_id: @special_rule.ruleholder_id, text: @special_rule.text } }
    end

    assert_redirected_to special_rule_url(SpecialRule.last)
  end

  test "should show special_rule" do
    get special_rule_url(@special_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_special_rule_url(@special_rule)
    assert_response :success
  end

  test "should update special_rule" do
    patch special_rule_url(@special_rule), params: { special_rule: { name: @special_rule.name, ruleholder_id: @special_rule.ruleholder_id, text: @special_rule.text } }
    assert_redirected_to special_rule_url(@special_rule)
  end

  test "should destroy special_rule" do
    assert_difference('SpecialRule.count', -1) do
      delete special_rule_url(@special_rule)
    end

    assert_redirected_to special_rules_url
  end
end
