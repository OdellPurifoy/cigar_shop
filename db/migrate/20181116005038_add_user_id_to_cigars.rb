class AddUserIdToCigars < ActiveRecord::Migration[5.2]
  def change
    add_column :cigars, :user_id, :integer
  end
end
