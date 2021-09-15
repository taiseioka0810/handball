class AddInputIdToGameexectives < ActiveRecord::Migration[6.1]
  def change
    add_column :gameexectives, :input_id, :integer
  end
end
