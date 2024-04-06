class Skill < ApplicationRecord
  validates :name, presence: true

  has_many :mentor_skills
  has_many :mentors, through: :mentor_skills
end
