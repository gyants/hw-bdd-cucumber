class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :movie, index: true, foreign_key: true
      t.references :moviegoer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
