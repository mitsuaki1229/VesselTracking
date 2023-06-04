require "test_helper"

class VoyageHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voyage_history = voyage_histories(:one)
  end

  test "should get index" do
    get voyage_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_voyage_history_url
    assert_response :success
  end

  test "should create voyage_history" do
    assert_difference("VoyageHistory.count") do
      post voyage_histories_url, params: { voyage_history: { departure_port: @voyage_history.departure_port, departure_time: @voyage_history.departure_time, entering_port_time: @voyage_history.entering_port_time, entry_port: @voyage_history.entry_port, naccs_code: @voyage_history.naccs_code, owner_id: @voyage_history.owner_id } }
    end

    assert_redirected_to voyage_history_url(VoyageHistory.last)
  end

  test "should show voyage_history" do
    get voyage_history_url(@voyage_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_voyage_history_url(@voyage_history)
    assert_response :success
  end

  test "should update voyage_history" do
    patch voyage_history_url(@voyage_history), params: { voyage_history: { departure_port: @voyage_history.departure_port, departure_time: @voyage_history.departure_time, entering_port_time: @voyage_history.entering_port_time, entry_port: @voyage_history.entry_port, naccs_code: @voyage_history.naccs_code, owner_id: @voyage_history.owner_id } }
    assert_redirected_to voyage_history_url(@voyage_history)
  end

  test "should destroy voyage_history" do
    assert_difference("VoyageHistory.count", -1) do
      delete voyage_history_url(@voyage_history)
    end

    assert_redirected_to voyage_histories_url
  end
end
