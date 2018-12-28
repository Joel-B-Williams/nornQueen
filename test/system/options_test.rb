require "application_system_test_case"

class OptionsTest < ApplicationSystemTestCase
  setup do
    @option = options(:one)
  end

  test "visiting the index" do
    visit options_url
    assert_selector "h1", text: "Options"
  end

  test "creating a Option" do
    visit options_url
    click_on "New Option"

    fill_in "Group", with: @option.group
    fill_in "Name", with: @option.name
    fill_in "One or none", with: @option.one_or_none
    fill_in "Optional", with: @option.optional
    fill_in "Points", with: @option.points
    fill_in "Stats", with: @option.stats
    fill_in "Wargear", with: @option.wargear
    fill_in "Weapon", with: @option.weapon
    click_on "Create Option"

    assert_text "Option was successfully created"
    click_on "Back"
  end

  test "updating a Option" do
    visit options_url
    click_on "Edit", match: :first

    fill_in "Group", with: @option.group
    fill_in "Name", with: @option.name
    fill_in "One or none", with: @option.one_or_none
    fill_in "Optional", with: @option.optional
    fill_in "Points", with: @option.points
    fill_in "Stats", with: @option.stats
    fill_in "Wargear", with: @option.wargear
    fill_in "Weapon", with: @option.weapon
    click_on "Update Option"

    assert_text "Option was successfully updated"
    click_on "Back"
  end

  test "destroying a Option" do
    visit options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Option was successfully destroyed"
  end
end
