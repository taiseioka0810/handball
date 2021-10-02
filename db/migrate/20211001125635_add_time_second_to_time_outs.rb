class AddTimeSecondToTimeOuts < ActiveRecord::Migration[6.1]
  def change
    add_column :time_outs, :time_second, :integer
  end
end
