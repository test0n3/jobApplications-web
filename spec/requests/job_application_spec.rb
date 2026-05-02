require 'rails_helper'

RSpec.describe "JobApplications", type: :request do
  let(:valid_attributes) { { application_date: Date.today, position: Faker::Company.profession,
                            company: Faker::Company.name, platform: "LinkedIn", state: :draft } }
  let(:invalid_attributes) { { application_date: Date.yesterday, position: nil,
                               company: nil, platform: nil } }

  describe "GET /index" do
    it 'returns a successful response' do
      get job_applications_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /create" do
    it 'returns a successful response' do
      expect { post job_applications_path, params: { post: valid_attributes } }.to change(JobApplication, :count).by(1)
      expect(response).to redirect_to(job_application_path(JobApplication.last))
    end
  end
end
