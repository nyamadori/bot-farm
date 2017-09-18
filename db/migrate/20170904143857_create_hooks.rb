class CreateHooks < ActiveRecord::Migration[5.1]
  def change
    create_table :hooks do |t|
      t.string :description, null: false
      t.integer :kind, null: false
      t.json :params
      t.references :bot, foreign_key: true, null: false

      t.timestamps
    end
  end
end
