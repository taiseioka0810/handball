class AddColumnToInputs < ActiveRecord::Migration[6.1]
  def change
    add_column :inputs, :age, :string
  end
end
