class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :description
      t.string :quote
      t.string :fb_link
      t.string :ig_link
      t.string :twitter_link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
