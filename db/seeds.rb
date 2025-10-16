# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

job_apps = [
  { application_date: Date.parse("2025-09-01"), position: "Junior Java developer", company: Faker::Company.name, platform: "LinkedIn" },
  { application_date: Date.parse("2025-09-01"), position: "Junior Ruby Developer", company: Faker::Company.name, platform: "Indeed" },
  { application_date: Date.parse("2025-09-01"), position: Faker::Company.profession, company: Faker::Company.name, platform: "LinkedIn" },
  { application_date: Date.parse("2025-09-04"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Ruby on Remote" },
  { application_date: Date.parse("2025-09-04"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Ruby on Remote" },
  { application_date: Date.parse("2025-09-08"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Get on Board", state: 2 },
  { application_date: Date.parse("2025-09-08"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Get on Board", state: 3 },
  { application_date: Date.parse("2025-09-08"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Indeed", state: 4 },
  { application_date: Date.parse("2025-09-10"), position: Faker::Company.profession, company: Faker::Company.name, platform: "LinkedIn", state: 5 },
  { application_date: Date.parse("2025-09-10"), position: Faker::Company.profession, company: Faker::Company.name, platform: "Indeed", state: 2 }]

job_apps.each do |app|
  JobApplication.create(app)
end