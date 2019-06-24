class Review < ApplicationRecord
  belongs_to :user_reviewed, :class_name => 'User', :foreign_key => 'user_reviewed_id'
  belongs_to :review_giver, :class_name => 'User', :foreign_key => 'review_giver_id'
  validates :rating, presence: true
end
