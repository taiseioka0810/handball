class CreateGamemembers < ActiveRecord::Migration[6.1]
  def change
    create_table :gamemembers do |t|
      t.boolean :our
      t.string :name
      t.integer :back_number

      t.timestamps
    end
  end
end
