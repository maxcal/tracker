class Year < ApplicationRecord
  belongs_to :person
  has_one :location, dependent: :destroy
  alias_attribute :full_name, :year
end
