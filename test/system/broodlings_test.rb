require "application_system_test_case"

class BroodlingsTest < ApplicationSystemTestCase
  setup do
    @broodling = broodlings(:one)
  end

  test "visiting the index" do
    visit broodlings_url
    assert_selector "h1", text: "Broodlings"
  end

  test "creating a Broodling" do
    visit broodlings_url
    click_on "New Broodling"

    fill_in "Base points", with: @broodling.base_points
    fill_in "Battlefield role", with: @broodling.battlefield_role
    fill_in "Name", with: @broodling.name
    fill_in "Stats", with: @broodling.stats
    click_on "Create Broodling"

    assert_text "Broodling was successfully created"
    click_on "Back"
  end

  test "updating a Broodling" do
    visit broodlings_url
    click_on "Edit", match: :first

    fill_in "Base points", with: @broodling.base_points
    fill_in "Battlefield role", with: @broodling.battlefield_role
    fill_in "Name", with: @broodling.name
    fill_in "Stats", with: @broodling.stats
    click_on "Update Broodling"

    assert_text "Broodling was successfully updated"
    click_on "Back"
  end

  test "destroying a Broodling" do
    visit broodlings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Broodling was successfully destroyed"
  end
end
