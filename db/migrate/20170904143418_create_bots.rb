class CreateBots < ActiveRecord::Migration[5.1]
  def change
    create_table :bots do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.json :files

      t.timestamps
    end
  end
end
