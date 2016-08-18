class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :published_at
      t.string :publisher

      t.timestamps
    end
  end
end
