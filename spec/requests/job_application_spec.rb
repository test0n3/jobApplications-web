require 'rails_helper'

RSpec.describe "JobApplications", type: :request do
  describe "GET /index" do
    get job_application_index_path
    expect(response).to have_http_status(:ok)
  end
end
