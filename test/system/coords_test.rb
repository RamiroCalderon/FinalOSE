require "application_system_test_case"

class CoordsTest < ApplicationSystemTestCase
  setup do
    @coord = coords(:one)
  end

  test "visiting the index" do
    visit coords_url
    assert_selector "h1", text: "Coords"
  end

  test "creating a Coord" do
    visit coords_url
    click_on "New Coord"

    fill_in "Name", with: @coord.name
    fill_in "School", with: @coord.school_id
    click_on "Create Coord"

    assert_text "Coord was successfully created"
    click_on "Back"
  end

  test "updating a Coord" do
    visit coords_url
    click_on "Edit", match: :first

    fill_in "Name", with: @coord.name
    fill_in "School", with: @coord.school_id
    click_on "Update Coord"

    assert_text "Coord was successfully updated"
    click_on "Back"
  end

  test "destroying a Coord" do
    visit coords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coord was successfully destroyed"
  end
end
