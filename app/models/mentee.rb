class Mentee < ApplicationRecord
  belongs_to :user

  has_many :mentoring_appointments
end
