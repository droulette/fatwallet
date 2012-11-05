class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :company
      t.decimal :cashback

      t.timestamps
    end
  end
end
