class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title, null:false
      t.integer :user_id, null:false
      t.text :body
      t.string :image
      t.string :eyecatchimage
      t.string :url
      t.integer :fee
      t.integer :category
      t.timestamps
    end
  end
end
