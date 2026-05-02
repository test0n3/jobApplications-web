class JobApplicationsController < ApplicationController
  before_action :set_job_application, only: [ :show, :edit, :update, :destroy ]
  before_action :app_attached?, only: [ :create, :update]
  def index
    @job_applications = JobApplication.recent
  end

  def show
    # @job_application =JobApplication.find(params[:id])
  end

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    if @job_application.save
      redirect_to @job_application, notice: "Job application was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @job_application = JobApplication.find(params[:id])
  end

  def update
    # @job_application = JobApplication.find(params[:id])
    if @job_application.update(job_application_params)
      redirect_to @job_application, notice: "Job application was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # @job_application = JobApplication.find(params[:id])
    @job_application.destroy
    redirect_to job_applications_path, notice: "Job application was successfully deleted."
  end

  private

  def set_job_application
    @job_application = JobApplication.find(params[:id])
  end

  def job_application_params
    # params.require(:job_application).permit([ :application_date, :position, :company,
    #                                  :platform, :state, :application_capture ])
    params.expect(job_applications: [ :application_date, :position, :company,
                                      :platform, :state, :application_capture ])
  end

  def app_attached?
    unless @job_application.application_capture.attached?
      @job_application.state = :draft
    end
  end
end
