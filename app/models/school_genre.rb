class SchoolGenre < ApplicationRecord
  belongs_to :school
  belongs_to :genre
end
