class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :provider
    	t.string :uid
    	t.string :name
    	t.string :email
    	t.string :screen_name
    end
  end
end