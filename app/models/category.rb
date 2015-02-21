class Category < ActiveRecord::Base
  has_many :pictures
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 50 }
  validates :purity, presence: true, inclusion: { in: %w(safe sketchy nsfw) }
end