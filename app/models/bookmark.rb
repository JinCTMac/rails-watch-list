class Bookmark < ApplicationRecord
  # A bookmark belongs to a movie
  belongs_to :movie
  # A bookmark belongs to a list
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # this validates the uniqueness of the pairing of movies and lists via id
  # see https://medium.com/@ollesu/making-sure-pairings-are-unique-in-active-record-validation-in-rails-e5afe14f0149
  validates_uniqueness_of :movie_id, scope: [:list_id]
end
