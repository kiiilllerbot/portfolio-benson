class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :institution
      t.string :place
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
