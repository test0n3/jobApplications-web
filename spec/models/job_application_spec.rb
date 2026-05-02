# == Schema Information
#
# Table name: job_applications
#
#  id               :integer          not null, primary key
#  application_date :date
#  position         :string
#  company          :string
#  platform         :string
#  state            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'validation' do
    it 'is invalid without an application date' do
      job_application = JobApplication.new(application_date: nil)
      job_application.valid?
      expect(job_application.errors[:application_date]).to include("can't be blank")
    end

    it 'is invalid without a position' do
      job_application = JobApplication.new(position: nil)
      job_application.valid?
      expect(job_application.errors[:position]).to include("can't be blank")
    end

    it 'is invalid without a company' do
      job_application = JobApplication.new(company: nil)
      job_application.valid?
      expect(job_application.errors[:company]).to include("can't be blank")
    end

    it 'is invalid without a platform' do
      job_application = JobApplication.new(platform: nil)
      job_application.valid?
      expect(job_application.errors[:platform]).to include("can't be blank")
    end

    it 'has default state as draft' do
      job_application = JobApplication.new()
      expect(job_application.draft?).to be true
    end
  end
end
