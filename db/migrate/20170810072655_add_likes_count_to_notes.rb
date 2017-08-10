class AddLikesCountToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :likes_count, :integer
  end
end
