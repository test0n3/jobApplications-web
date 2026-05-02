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

class JobApplication < ApplicationRecord
  enum :state, {
    draft: 1,
    in_process: 2,
    in_interviews: 3,
    in_evaluation: 4,
    rejected: 5,
    hired: 6
  }, default: :draft

  validates :application_date, presence: true
  validates :position, presence: true
  validates :company, presence: true
  validates :platform, presence: true

  scope :recent, -> { order(application_date: :desc) }

  has_one_attached :application_capture
end
