class School < ApplicationRecord
  belongs_to :movie_relation, optional: true
  belongs_to :photo_relation, optional: true
  belongs_to :genre_relation, optional: true
end
