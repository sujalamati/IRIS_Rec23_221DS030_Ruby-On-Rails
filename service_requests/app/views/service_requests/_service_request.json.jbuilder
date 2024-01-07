json.extract! service_request, :id, :request, :temp_id, :current_step, :applicant_name, :unique_id, :dept, :approval_status, :approval_flow, :field_name, :field_response, :created_at, :updated_at
json.url service_request_url(service_request, format: :json)
