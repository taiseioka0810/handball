class AddHalfToTimeOuts < ActiveRecord::Migration[6.1]
  def change
    add_column :time_outs, :half, :string
  end
end
