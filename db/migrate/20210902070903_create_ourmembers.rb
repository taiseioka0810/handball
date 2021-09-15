class CreateOurmembers < ActiveRecord::Migration[6.1]
  def change
    create_table :ourmembers do |t|
      t.string :name
      t.integer :back_number

      t.timestamps
    end
  end
end
