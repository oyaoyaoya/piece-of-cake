class Note < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :eyecatchimage, ImageUploader

  belongs_to :user
  has_many :paid_members

  validates :title, presence: true
end
