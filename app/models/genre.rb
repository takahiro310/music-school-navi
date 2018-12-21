class Genre < ApplicationRecord
  has_many :school_genre, dependent: :destroy
  has_many :school, through: :school_genre
end
