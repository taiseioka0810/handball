class AddInputIdToGamemembers < ActiveRecord::Migration[6.1]
  def change
    add_column :gamemembers, :input_id, :integer
  end
end
