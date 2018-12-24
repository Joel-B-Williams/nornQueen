require "application_system_test_case"

class SpecialRulesTest < ApplicationSystemTestCase
  setup do
    @special_rule = special_rules(:one)
  end

  test "visiting the index" do
    visit special_rules_url
    assert_selector "h1", text: "Special Rules"
  end

  test "creating a Special rule" do
    visit special_rules_url
    click_on "New Special Rule"

    fill_in "Name", with: @special_rule.name
    fill_in "Ruleholder", with: @special_rule.ruleholder_id
    fill_in "Text", with: @special_rule.text
    click_on "Create Special rule"

    assert_text "Special rule was successfully created"
    click_on "Back"
  end

  test "updating a Special rule" do
    visit special_rules_url
    click_on "Edit", match: :first

    fill_in "Name", with: @special_rule.name
    fill_in "Ruleholder", with: @special_rule.ruleholder_id
    fill_in "Text", with: @special_rule.text
    click_on "Update Special rule"

    assert_text "Special rule was successfully updated"
    click_on "Back"
  end

  test "destroying a Special rule" do
    visit special_rules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Special rule was successfully destroyed"
  end
end
