class CreateOurexectives < ActiveRecord::Migration[6.1]
  def change
    create_table :ourexectives do |t|
      t.string :name
      t.string :rank

      t.timestamps
    end
  end
end
