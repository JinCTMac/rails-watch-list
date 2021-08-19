class Movie < ApplicationRecord
  # A movie has many bookmarks
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
