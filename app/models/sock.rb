class Sock < ApplicationRecord

  SOCK_TYPE = ["Over knee", "Knee high", "Over calf", "Mid-calf", "Quarter", "Low cut", "Extra low cut", "Invisible", "Toe cover"].freeze
  SOCK_PATTERN = ["Solid", "Striped", "Polka dots", "Other"].freeze
  SEASON = ["Spring", "Summer", "Autumn", "Winter"].freeze
  SIZES = ["36-41", "42-46", "47-51"].freeze
  COLOR = ["Apricot", "Beige", "Black", "Blue", "Brown", "Cyan", "Green", "Grey", "Lavender", "Lime", "Magenta", "Maroon", "Mint", "Navy", "Olive", "Orange", "Pink", "Purple", "Red", "Teal", "White", "Yellow"].freeze


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
  validates :color, inclusion: { in: ["Apricot", "Beige", "Black", "Blue", "Brown", "Cyan", "Green", "Grey", "Lavender", "Lime", "Magenta", "Maroon", "Mint", "Navy", "Olive", "Orange", "Pink", "Purple", "Red", "Teal", "White", "Yellow"] }, presence: true
  validates :price, presence: true, numericality: true
  validates :pattern, inclusion: { in: ["Solid", "Striped", "Polka dots", "Other", "None"] }, presence: true
  validates :size, inclusion: { in: ["36-41", "42-46", "47-51"] }, presence: true
  validates :description, presence: true, presence: true
  # validates :sock_type, inclusion: { in: ["Over the knee", "Knee high", "Over the calf/Executive", "Mid-calf/Crew", "Quarter/Anklets", "Ped/Low cut", "Liner/Extra low cut", "Invisible/No-show", "Toe cover/Mute"] }, allow_blank: true
  validates :season, inclusion: { in: ["spring", "winter", "summer", "autumn"] }, presence: true

end
