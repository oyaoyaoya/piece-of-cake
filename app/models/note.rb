class Note < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :eyecatchimage, ImageUploader

  belongs_to :user
  has_many :paid_members
  has_many :likes, dependent: :destroy

  validates :title, presence: true

  enum category: [recommend: 0, manga: 1, column: 2, novel: 3, music: 4]

  def like_user(user_id)
      likes.find_by(user_id: user_id)
  end
end
