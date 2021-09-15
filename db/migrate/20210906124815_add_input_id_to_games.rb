class AddInputIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :input_id, :integer
  end
end
