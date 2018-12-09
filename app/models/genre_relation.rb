class GenreRelation < ApplicationRecord
  belongs_to :genre, optional: true
end
