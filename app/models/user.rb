class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :mentor, class_name: 'Mentor'

  validates :email, :name, presence: true
  validates :email, uniqueness: true

  has_one :mentor
  has_one :mentee
end
