require "application_system_test_case"

class ServiceRequestsTest < ApplicationSystemTestCase
  setup do
    @service_request = service_requests(:one)
  end

  test "visiting the index" do
    visit service_requests_url
    assert_selector "h1", text: "Service requests"
  end

  test "should create service request" do
    visit service_requests_url
    click_on "New service request"

    fill_in "Applicant name", with: @service_request.applicant_name
    fill_in "Approval flow", with: @service_request.approval_flow
    fill_in "Approval status", with: @service_request.approval_status
    fill_in "Current step", with: @service_request.current_step
    fill_in "Dept", with: @service_request.dept
    fill_in "Field name", with: @service_request.field_name
    fill_in "Field response", with: @service_request.field_response
    fill_in "Request", with: @service_request.request
    fill_in "Temp", with: @service_request.temp_id
    fill_in "Unique", with: @service_request.unique_id
    click_on "Create Service request"

    assert_text "Service request was successfully created"
    click_on "Back"
  end

  test "should update Service request" do
    visit service_request_url(@service_request)
    click_on "Edit this service request", match: :first

    fill_in "Applicant name", with: @service_request.applicant_name
    fill_in "Approval flow", with: @service_request.approval_flow
    fill_in "Approval status", with: @service_request.approval_status
    fill_in "Current step", with: @service_request.current_step
    fill_in "Dept", with: @service_request.dept
    fill_in "Field name", with: @service_request.field_name
    fill_in "Field response", with: @service_request.field_response
    fill_in "Request", with: @service_request.request
    fill_in "Temp", with: @service_request.temp_id
    fill_in "Unique", with: @service_request.unique_id
    click_on "Update Service request"

    assert_text "Service request was successfully updated"
    click_on "Back"
  end

  test "should destroy Service request" do
    visit service_request_url(@service_request)
    click_on "Destroy this service request", match: :first

    assert_text "Service request was successfully destroyed"
  end
end
