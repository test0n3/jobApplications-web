class JobApplicationsController < ApplicationController
  def index
    @job_applications = JobApplication.recent
  end

  def show
    @job_application =JobApplication.find(params[:id])
  end

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    if @job_application.save
      redirect to @job_application
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private
  def job_application_params
    params.except(job_application: [:application_date, :position, :company, :platform, :state, :application_capture])
  end

  def app_attached?
    unless @job_application.application_capture.attached?
      @job_application.state = 1
    end
  end
end
