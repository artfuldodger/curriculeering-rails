class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.references :lesson, index: true
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
