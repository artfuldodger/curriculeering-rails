class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.references :instructor, index: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
