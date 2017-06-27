class Manual < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :category
  has_many :steps
  validates :title, presence: true
  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(', ').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
end
