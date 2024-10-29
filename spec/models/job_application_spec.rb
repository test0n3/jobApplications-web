# == Schema Information
#
# Table name: job_applications
#
#  id                   :bigint           not null, primary key
#  application_company  :string
#  application_date     :date
#  application_platform :string
#  application_position :string
#  application_state    :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'validations' do
    it 'requires application_company to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:application_company]).to include("can't be blank")
    end

    it 'requires application_position to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:application_position]).to include("can't be blank")
    end

    it 'requires application_platform to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:application_platform]).to include("can't be blank")
    end
  end
end
