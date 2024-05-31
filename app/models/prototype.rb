class Prototype < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image

  validates :user, presence: true
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  private

  def image_presence
    errors.add(:image, 'must be attached') unless image.attached?
  end
end