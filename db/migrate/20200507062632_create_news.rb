class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.text :content, null: false
      t.string :title, null: false
      
      t.timestamps
    end
  end
end
