class School < ApplicationRecord
  has_many :school_photo
  has_many :school_movie
  has_many :school_genre
  has_many :photo, through: :school_photo
  has_many :movie, through: :school_movie
  has_many :genre, through: :school_genre

  accepts_nested_attributes_for :school_photo, allow_destroy: true
  accepts_nested_attributes_for :school_movie, allow_destroy: true
  accepts_nested_attributes_for :school_genre, allow_destroy: true

  mount_uploader :card_photo, ImageUploader
  mount_uploader :cover_photo, ImageUploader
end
