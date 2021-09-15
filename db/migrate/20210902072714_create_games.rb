class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :back_number
      t.time :time
      t.string :action

      t.timestamps
    end
  end
end
