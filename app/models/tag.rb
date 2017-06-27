class Tag < ApplicationRecord
  has_many :taggings
  has_many :manuals, through: :taggings
end
