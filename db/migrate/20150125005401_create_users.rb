class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :email
      t.integer :num_dogs
      t.timestamps
    end
  end
end
