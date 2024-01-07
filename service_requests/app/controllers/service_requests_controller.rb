class ServiceRequestsController < ApplicationController
  before_action :set_service_request, only: %i[ show edit update destroy ]

  # GET /service_requests or /service_requests.json
  def index
    @service_requests = ServiceRequest.all
  end

  # GET /service_requests/1 or /service_requests/1.json
  def show
  end

  # GET /service_requests/available
  def available
    @templates=Template.all
  end

  # GET /service_requests/new
  def new
    @service_request = ServiceRequest.new
    @template=Template.find_by(template_id: params[:temp_id])
  end

  # GET /service_requests/1/edit
  def edit
  end

  # POST /service_requests or /service_requests.json
  def create
    @service_request = ServiceRequest.new(service_request_params)

    respond_to do |format|
      if @service_request.save
        format.html { redirect_to service_request_url(@service_request), notice: "Service request was successfully created." }
        format.json { render :show, status: :created, location: @service_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_requests/1 or /service_requests/1.json
  def update
    respond_to do |format|
      if @service_request.update(service_request_params)
        format.html { redirect_to service_request_url(@service_request), notice: "Service request was successfully updated." }
        format.json { render :show, status: :ok, location: @service_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_requests/1 or /service_requests/1.json
  def destroy
    @service_request.destroy

    respond_to do |format|
      format.html { redirect_to service_requests_url, notice: "Service request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_request
      @service_request = ServiceRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_request_params
      params.require(:service_request).permit(:request, :temp_id, :current_step, :applicant_name, :unique_id, :dept, :approval_status, :approval_flow, :field_name, :field_response)
    end
end
