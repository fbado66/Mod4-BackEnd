class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :catch_phrase
      t.string :details
      t.string :image_1_url
      t.string :image_2_url
      t.string :image_3_url
      t.string :image_4_url
      t.string :image_5_url
      t.integer :price
      t.string :description
      t.string :host_info

      t.timestamps
    end
  end
end
