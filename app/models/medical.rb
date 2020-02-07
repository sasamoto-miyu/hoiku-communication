class Medical < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :map, ImageUploader
end
