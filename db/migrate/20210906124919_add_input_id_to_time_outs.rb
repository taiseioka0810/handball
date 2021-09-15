class AddInputIdToTimeOuts < ActiveRecord::Migration[6.1]
  def change
    add_column :time_outs, :input_id, :integer
  end
end
