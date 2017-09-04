class CreateHookScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :hook_scripts do |t|
      t.text :content
      t.integer :index, default: 1000, null: false
      t.references :hook, foreign_key: true, null: false

      t.timestamps
    end
  end
end
