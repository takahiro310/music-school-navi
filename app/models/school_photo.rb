class SchoolPhoto < ApplicationRecord
  belongs_to :school

  mount_uploader :photo, ImageUploader
end
