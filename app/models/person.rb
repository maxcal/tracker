class Person < ApplicationRecord
  has_many :years, dependent: :destroy
end
