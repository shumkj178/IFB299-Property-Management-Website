class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :house_no
      t.string :street
      t.string :suburbs
      t.string :postcode
      t.string :region
      t.integer :price
      t.integer :bedroom_no
      t.integer :bathroom_no
      t.integer :garage_no
      t.string :picture_path

      t.timestamps
    end
  end
end
