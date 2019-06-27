class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, :foreign_key => :user_reviewed_id
  has_many :socks, dependent: :destroy
  has_many :transactions, dependent: :destroy

  validates :location, presence: true

  validates :username, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
