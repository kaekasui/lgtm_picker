class CreateLgtms < ActiveRecord::Migration[5.2]
  def change
    create_table :lgtms do |t|
      t.string :url, null: false

      t.timestamps
    end
    add_index :lgtms, :url, unique: true
  end
end
