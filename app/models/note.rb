class Note < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :eyecatchimage, ImageUploader

  has_many :users, through: :paid_members
  has_many :paid_members

  validates :title, presence: true
end
