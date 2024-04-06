class Mentor < ApplicationRecord
  belongs_to :user

  has_many :mentor_skills
  has_many :skills, through: :mentor_skills
  has_many :mentoring_appointments
end
