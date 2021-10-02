class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :back_number
      t.integer :time_minute
      t.string :action

      t.timestamps
    end
  end
end
