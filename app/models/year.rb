class Year < ApplicationRecord
  belongs_to :person
  has_many :locations, dependent: :destroy
end
