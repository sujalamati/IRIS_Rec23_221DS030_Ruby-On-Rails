require "test_helper"

class ServiceRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_request = service_requests(:one)
  end

  test "should get index" do
    get service_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_service_request_url
    assert_response :success
  end

  test "should create service_request" do
    assert_difference("ServiceRequest.count") do
      post service_requests_url, params: { service_request: { applicant_name: @service_request.applicant_name, approval_flow: @service_request.approval_flow, approval_status: @service_request.approval_status, current_step: @service_request.current_step, dept: @service_request.dept, field_name: @service_request.field_name, field_response: @service_request.field_response, request: @service_request.request, temp_id: @service_request.temp_id, unique_id: @service_request.unique_id } }
    end

    assert_redirected_to service_request_url(ServiceRequest.last)
  end

  test "should show service_request" do
    get service_request_url(@service_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_request_url(@service_request)
    assert_response :success
  end

  test "should update service_request" do
    patch service_request_url(@service_request), params: { service_request: { applicant_name: @service_request.applicant_name, approval_flow: @service_request.approval_flow, approval_status: @service_request.approval_status, current_step: @service_request.current_step, dept: @service_request.dept, field_name: @service_request.field_name, field_response: @service_request.field_response, request: @service_request.request, temp_id: @service_request.temp_id, unique_id: @service_request.unique_id } }
    assert_redirected_to service_request_url(@service_request)
  end

  test "should destroy service_request" do
    assert_difference("ServiceRequest.count", -1) do
      delete service_request_url(@service_request)
    end

    assert_redirected_to service_requests_url
  end
end
