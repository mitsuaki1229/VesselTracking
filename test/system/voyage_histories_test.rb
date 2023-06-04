require "application_system_test_case"

class VoyageHistoriesTest < ApplicationSystemTestCase
  setup do
    @voyage_history = voyage_histories(:one)
  end

  test "visiting the index" do
    visit voyage_histories_url
    assert_selector "h1", text: "Voyage histories"
  end

  test "should create voyage history" do
    visit voyage_histories_url
    click_on "New voyage history"

    fill_in "Departure port", with: @voyage_history.departure_port
    fill_in "Departure time", with: @voyage_history.departure_time
    fill_in "Entering port time", with: @voyage_history.entering_port_time
    fill_in "Entry port", with: @voyage_history.entry_port
    fill_in "Naccs code", with: @voyage_history.naccs_code
    fill_in "Owner", with: @voyage_history.owner_id
    click_on "Create Voyage history"

    assert_text "Voyage history was successfully created"
    click_on "Back"
  end

  test "should update Voyage history" do
    visit voyage_history_url(@voyage_history)
    click_on "Edit this voyage history", match: :first

    fill_in "Departure port", with: @voyage_history.departure_port
    fill_in "Departure time", with: @voyage_history.departure_time
    fill_in "Entering port time", with: @voyage_history.entering_port_time
    fill_in "Entry port", with: @voyage_history.entry_port
    fill_in "Naccs code", with: @voyage_history.naccs_code
    fill_in "Owner", with: @voyage_history.owner_id
    click_on "Update Voyage history"

    assert_text "Voyage history was successfully updated"
    click_on "Back"
  end

  test "should destroy Voyage history" do
    visit voyage_history_url(@voyage_history)
    click_on "Destroy this voyage history", match: :first

    assert_text "Voyage history was successfully destroyed"
  end
end
