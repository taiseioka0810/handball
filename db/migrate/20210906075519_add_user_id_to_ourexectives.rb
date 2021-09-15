class AddUserIdToOurexectives < ActiveRecord::Migration[6.1]
  def change
    add_column :ourexectives, :user_id, :integer
  end
end
