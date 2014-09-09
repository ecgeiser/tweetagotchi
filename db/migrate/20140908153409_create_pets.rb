class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
    	t.string :name, presence: true
    	t.integer :hunger, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 3}
    	t.references :user
    	t.references :pet_type, presence: true
    	t.string :hashtag
        t.string :image

    	t.timestamps
    end
  end
end
