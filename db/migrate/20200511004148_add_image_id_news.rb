class AddImageIdNews < ActiveRecord::Migration[6.0]
  def change
    add_column :news, :image_id, :string
  end
end
