class JobApplication < ApplicationRecord
  enum :state, {
    in_process: 1,
    in_interviews: 2,
    in_evaluation: 3,
    rejected: 4,
    hired: 5
  }, default: in_process

  validates :application_date, presence: true
  validates :position, presence: true
  validates :company, presence: true
  validates :platform, presence: true
end
