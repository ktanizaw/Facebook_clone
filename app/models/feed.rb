class Feed < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :image, presence: true
    belongs_to :user
    has_many :comments, dependent: :destroy
end
