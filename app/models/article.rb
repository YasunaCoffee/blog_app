class Article < ApplicationRecord
  has_many :images
  has_many :descriptions
  has_many :titles
  belongs_to :user
end
