class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
     t.string :name
     t.text :text
     t.integer :number
     t.integer :section_id

   	 t.timestamps
    end
  end
end
