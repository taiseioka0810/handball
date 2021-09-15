class AddUserIdToOurmembers < ActiveRecord::Migration[6.1]
  def change
    add_column :ourmembers, :user_id, :integer
  end
end
