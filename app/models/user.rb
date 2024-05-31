class User < ApplicationRecord
  # Deviseのモジュールをインクルード
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # バリデーションの追加
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  # アソシエーション
  has_many :comments, dependent: :destroy
  has_many :prototypes, dependent: :destroy
end
