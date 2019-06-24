class Sock < ApplicationRecord
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
end

