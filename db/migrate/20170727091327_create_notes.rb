class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :user_id, null:false
      t.string :title, null:false
      t.text :body
      t.string :image
      t.string :eyechachImage
      t.string :url
      t.integer :fee
      t.integer :category
      t.timestamps
    end
  end
end
