class AddUserIdToInputs < ActiveRecord::Migration[6.1]
  def change
    add_column :inputs, :user_id, :integer
  end
end
