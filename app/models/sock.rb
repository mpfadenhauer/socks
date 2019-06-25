class Sock < ApplicationRecord

  SOCK_TYPE = ["Over the knee", "Knee high", "Over the calf/Executive", "Mid-calf/Crew", "Quarter/Anklets", "Ped/Low cut", "Liner, Extra low cut", "Invisible/No-show", "Toe cover/Mute"].freeze
  SOCK_PATTERN = ["Solid", "Striped", "Polka dots", "Other"].freeze
  SEASON = ["spring", "winter", "summer", "autumn"].freeze
  MIN_SIZE = (25..50).to_a.freeze
  MAX_SIZE = (25..50).to_a.freeze

  # for cloudinary
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_color_and_title,
    against: [:title, :color, :pattern, :season],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user

  validates :title, presence: true
  validates :color, presence: true
  validates :price, presence: true, numericality: true
  validates :pattern, inclusion: { in: ["Solid", "Striped", "Polka dots", "Other", "None"] }, allow_blank: true
  # validates :min_size, greater_than_or_equal_to: 0, allow_blank: true
  # validates :max_size, less_than_or_equal_to: 50, allow_blank: true
  validates :description, presence: true, allow_blank: true
  # validates :sock_type, inclusion: { in: ["Over the knee", "Knee high", "Over the calf/Executive", "Mid-calf/Crew", "Quarter/Anklets", "Ped/Low cut", "Liner/Extra low cut", "Invisible/No-show", "Toe cover/Mute"] }, allow_blank: true
  validates :season, inclusion: { in: ["spring", "winter", "summer", "autumn"] }, allow_blank: true

  # scope for filtering on index page
  include Filterable
  scope :color, -> (color) { where color: color }
  scope :min_size, -> (min_size) { where min_size: min_size }
  scope :max_size, -> (max_size) { where max_size: max_size }
  scope :sock_type, -> (sock_type) { where sock_type: sock_type }
  scope :brand, -> (brand) { where brand: brand }
  scope :season, -> (season) { where season: season }
  scope :age, -> (age) { where age: age }
  scope :price, -> (price) { where price: price }
end
