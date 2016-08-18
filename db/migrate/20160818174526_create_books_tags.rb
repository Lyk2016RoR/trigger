class CreateBooksTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tags, :books
  end
end





