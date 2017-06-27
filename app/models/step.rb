class Step < ApplicationRecord
  belongs_to :manual
  validates :name, presence: true
end
