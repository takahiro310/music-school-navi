class MovieRelation < ApplicationRecord
  belongs_to :movie, optional: true
end
