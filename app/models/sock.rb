class Sock < ApplicationRecord

  SOCK_TYPE = ["Over the knee", "Knee high", "Over the calf/Executive", "Mid-calf/Crew", "Quarter/Anklets", "Ped/Low cut", "Liner, Extra low cut", "Invisible/No-show", "Toe cover/Mute"].freeze
  SOCK_PATTERN = ["Solid", "Striped", "Polka dots", "Other"].freeze
  SEASON = ["spring", "winter", "summer", "autumn"].freeze
  SIZES = ["36-41", "42-46", "47-51"].freeze
  COLOR = ["Maroon", "Brown", "Olive", "Teal", "Navy", "Black", "Red", " Orange", "Yellow", "lime", "Green", "Cyan", "Blue", "Purple", "Magenta", "Grey", "Pink", "Apricot", "Beige", "Mint", "Lavender", "White"].freeze

  # for cloudinary
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_color_and_title,
    against: [:title, :color, :pattern, :season],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

    pg_search_scope :search_by_filters,
    against: [:color, :sock_type, :pattern, :season],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user

  validates :brand, presence: true
  validates :sock_type, presence: true
  validates :title, presence: true
  validates :color, inclusion: { in: ["Maroon", "Brown", "Olive", "Teal", "Navy", "Black", "Red", " Orange", "Yellow", "lime", "Green", "Cyan", "Blue", "Purple", "Magenta", "Grey", "Pink", "Apricot", "Beige", "Mint", "Lavender", "White"] }, presence: true
  validates :price, presence: true, numericality: true
  validates :pattern, inclusion: { in: ["Solid", "Striped", "Polka dots", "Other", "None"] }, presence: true
  validates :size, inclusion: { in: ["36-41", "42-46", "47-51"] }, presence: true
  validates :description, presence: true, presence: true
  # validates :sock_type, inclusion: { in: ["Over the knee", "Knee high", "Over the calf/Executive", "Mid-calf/Crew", "Quarter/Anklets", "Ped/Low cut", "Liner/Extra low cut", "Invisible/No-show", "Toe cover/Mute"] }, allow_blank: true
  validates :season, inclusion: { in: ["spring", "winter", "summer", "autumn"] }, presence: true

end
