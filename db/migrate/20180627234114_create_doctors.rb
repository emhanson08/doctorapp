class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
    	t.string :name
    	t.string :location
    	t.string :specialty
    	t.float :rating
    	t.text :description
      t.timestamps
    end
  end
end
