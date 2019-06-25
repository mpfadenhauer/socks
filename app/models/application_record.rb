class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  mount_uploader :photo, PhotoUploader
end
