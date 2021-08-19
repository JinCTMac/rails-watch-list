class List < ApplicationRecord
  # A list has many bookmarks
  # When you delete a list, you should delete all associated bookmarks
  has_many :bookmarks, dependent: :destroy
  # A list has many movies through bookmarks
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
