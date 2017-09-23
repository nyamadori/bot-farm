class CreateBots < ActiveRecord::Migration[5.1]
  def change
    create_table :bots do |t|
      t.string :name, null: false
      t.text :description
      t.json :attachments
      t.timestamps
    end
  end
end
