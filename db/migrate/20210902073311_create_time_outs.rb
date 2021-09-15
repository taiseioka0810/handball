class CreateTimeOuts < ActiveRecord::Migration[6.1]
  def change
    create_table :time_outs do |t|
      t.boolean :our
      t.time :time
      t.integer :order

      t.timestamps
    end
  end
end
