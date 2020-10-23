class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :listing, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :nickname
      t.string :content
      t.integer :likes

      t.timestamps
    end
  end
end
