class AddUserToReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :user_id
    add_reference :reviews, :user_reviewed, index: true
    add_reference :reviews, :review_giver, index: true
  end
end
