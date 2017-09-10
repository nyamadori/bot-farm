class CreateHookScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :hook_scripts do |t|
      t.references :hook, foreign_key: true, null: false
      t.references :script, foreign_key: true, null: false
      t.integer :order, null: false, default: 100

      t.timestamps
    end
  end
end
