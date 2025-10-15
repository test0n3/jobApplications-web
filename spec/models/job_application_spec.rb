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
  pending "add some examples to (or delete) #{__FILE__}"
end
