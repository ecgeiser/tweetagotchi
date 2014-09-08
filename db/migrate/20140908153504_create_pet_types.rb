class CreatePetTypes < ActiveRecord::Migration
  def change
    create_table :pet_types do |t|
    	t.string :animal
    	t.string :photo_url_4
    	t.string :photo_url_3
    	t.string :photo_url_2
    	t.string :photo_url_1

    	t.timestamps
    end
  end
end
