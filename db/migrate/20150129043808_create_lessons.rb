class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :curriculum, index: true
      t.integer :order
      t.string :title
      t.text :description
      t.text :notes

      t.timestamps
    end
    add_index :lessons, :order
  end
end
