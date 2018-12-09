class PhotoRelation < ApplicationRecord
  belongs_to :photo, optional: true
end
