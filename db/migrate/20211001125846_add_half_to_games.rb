class AddHalfToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :half, :string
  end
end
