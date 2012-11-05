class CreateStoreFavorites < ActiveRecord::Migration
  def change
    create_table :store_favorites do |t|
      t.references :user
      t.references :store
      t.timestamps
    end
    add_index :store_favorites, ['user_id', 'store_id']
  end
end
