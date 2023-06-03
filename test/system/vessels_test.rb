require "application_system_test_case"

class VesselsTest < ApplicationSystemTestCase
  setup do
    @vessel = vessels(:one)
  end

  test "visiting the index" do
    visit vessels_url
    assert_selector "h1", text: "Vessels"
  end

  test "should create vessel" do
    visit vessels_url
    click_on "New vessel"

    fill_in "Latest update user", with: @vessel.latest_update_user
    fill_in "Naccs code", with: @vessel.naccs_code
    fill_in "Name", with: @vessel.name
    fill_in "Owner", with: @vessel.owner_id
    fill_in "Reference number", with: @vessel.reference_number
    fill_in "Remarks", with: @vessel.remarks
    click_on "Create Vessel"

    assert_text "Vessel was successfully created"
    click_on "Back"
  end

  test "should update Vessel" do
    visit vessel_url(@vessel)
    click_on "Edit this vessel", match: :first

    fill_in "Latest update user", with: @vessel.latest_update_user
    fill_in "Naccs code", with: @vessel.naccs_code
    fill_in "Name", with: @vessel.name
    fill_in "Owner", with: @vessel.owner_id
    fill_in "Reference number", with: @vessel.reference_number
    fill_in "Remarks", with: @vessel.remarks
    click_on "Update Vessel"

    assert_text "Vessel was successfully updated"
    click_on "Back"
  end

  test "should destroy Vessel" do
    visit vessel_url(@vessel)
    click_on "Destroy this vessel", match: :first

    assert_text "Vessel was successfully destroyed"
  end
end
