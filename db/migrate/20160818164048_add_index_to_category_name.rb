class AddIndexToCategoryName < ActiveRecord::Migration[5.0]
  def change
  	add_index :categories, :title, unique: true
  end
end
