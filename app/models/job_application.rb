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
class JobApplication < ApplicationRecord
  has_one_attached :application_capture
  enum :application_state, [:in_process, :in_interviews, :in_evaluation,
                            :rejected, :hired], default: "in_process"

  validates :application_company, presence: true, length: { minimum: 3 }
  validates :application_date, presence: true
  validates :application_platform, presence: true, length: { minimum: 3 }
  validates :application_position, presence: true, length: {minimum: 3 }
  validates :application_capture, presence: true
end
