class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
    	t.string :name, presence: true
    	t.integer :hunger
    	t.references :user
    	t.references :pet_type, presence: true
    	t.string :hashtag
        t.string :image

    	t.timestamps
    end
  end
end
