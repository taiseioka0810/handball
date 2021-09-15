class CreateGameexectives < ActiveRecord::Migration[6.1]
  def change
    create_table :gameexectives do |t|
      t.boolean :our
      t.string :name
      t.string :rank

      t.timestamps
    end
  end
end
