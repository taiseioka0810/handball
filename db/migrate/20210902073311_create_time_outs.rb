class CreateTimeOuts < ActiveRecord::Migration[6.1]
  def change
    create_table :time_outs do |t|
      t.string :our, null: false
      t.time :time
      t.integer :order

      t.timestamps
    end
  end
end
