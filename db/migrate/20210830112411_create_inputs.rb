class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.date :date
      t.string :place
      t.string :game_name
      t.string :game_round
      t.string :gender

      t.timestamps
    end
  end
end
