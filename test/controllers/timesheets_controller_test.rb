require 'test_helper'

class TimesheetsControllerTest < ActionController::TestCase
  setup do
    @timesheet = timesheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet" do
    assert_difference('Timesheet.count') do
      post :create, timesheet: { checkin: @timesheet.checkin, checkin_machine: @timesheet.checkin_machine, checkin_motive: @timesheet.checkin_motive, checkout: @timesheet.checkout, checkout_machine: @timesheet.checkout_machine, checkout_motive: @timesheet.checkout_motive, date: @timesheet.date, leaving_early: @timesheet.leaving_early, official_shift: @timesheet.official_shift }
    end

    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should show timesheet" do
    get :show, id: @timesheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet
    assert_response :success
  end

  test "should update timesheet" do
    patch :update, id: @timesheet, timesheet: { checkin: @timesheet.checkin, checkin_machine: @timesheet.checkin_machine, checkin_motive: @timesheet.checkin_motive, checkout: @timesheet.checkout, checkout_machine: @timesheet.checkout_machine, checkout_motive: @timesheet.checkout_motive, date: @timesheet.date, leaving_early: @timesheet.leaving_early, official_shift: @timesheet.official_shift }
    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should destroy timesheet" do
    assert_difference('Timesheet.count', -1) do
      delete :destroy, id: @timesheet
    end

    assert_redirected_to timesheets_path
  end
end
