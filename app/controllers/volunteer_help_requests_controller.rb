class VolunteerHelpRequestsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_volunteer_help_request, only: %i[ show edit update destroy ]

  # GET /volunteer_help_requests or /volunteer_help_requests.json
  def index
    @volunteer_help_requests = VolunteerHelpRequest.all
  end

  # GET /volunteer_help_requests/1 or /volunteer_help_requests/1.json
  def show
  end

  # GET /volunteer_help_requests/new
  def new
    @volunteer_help_request = VolunteerHelpRequest.new
  end

  # GET /volunteer_help_requests/1/edit
  def edit
  end

  # POST /volunteer_help_requests or /volunteer_help_requests.json
  def create
    @volunteer_help_request = current_user.volunteer_help_requests.new(volunteer_help_request_params)

    respond_to do |format|
      if @volunteer_help_request.save
        format.html { redirect_to volunteer_help_request_url(@volunteer_help_request), notice: "Volunteer help request was successfully created." }
        format.json { render :show, status: :created, location: @volunteer_help_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @volunteer_help_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteer_help_requests/1 or /volunteer_help_requests/1.json
  def update
    respond_to do |format|
      if @volunteer_help_request.update(volunteer_help_request_params)
        format.html { redirect_to volunteer_help_request_url(@volunteer_help_request), notice: "Volunteer help request was successfully updated." }
        format.json { render :show, status: :ok, location: @volunteer_help_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @volunteer_help_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_help_requests/1 or /volunteer_help_requests/1.json
  def destroy
    @volunteer_help_request.destroy

    respond_to do |format|
      format.html { redirect_to volunteer_help_requests_url, notice: "Volunteer help request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer_help_request
      @volunteer_help_request = VolunteerHelpRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def volunteer_help_request_params
      params.require(:volunteer_help_request).permit(:title, :description, :deadline, :city, :status, :image, :user_id)
    end
end
