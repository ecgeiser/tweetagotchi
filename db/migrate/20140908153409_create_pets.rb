class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
    	t.string :name
    	t.integer :hunger
    	t.references :user
    	t.references :pet_type
    	t.string :hashtag

    	t.timestamps
    end
  end
end
