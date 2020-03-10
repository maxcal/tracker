class Person < ApplicationRecord
  has_many :years, dependent: :destroy
  has_many :locations, through: :years
end
