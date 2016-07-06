class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
    	t.string :name
    	t.string :image
    	t.string :exposure
    	t.string :iso
    	t.integer :project_id
    	t.string :attachment
    	t.references :project
      t.timestamps null: false
    end
  end
end
