class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :body
      t.references :work, null: false, foreign_key: true

      t.timestamps
    end
  end
end
