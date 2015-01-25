class AddForeignIdToBreeds < ActiveRecord::Migration
  def change
    add_column :breeds, :user_id, :integer
  end
end
