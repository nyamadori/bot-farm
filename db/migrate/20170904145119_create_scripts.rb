class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.text :content

      t.timestamps
    end
  end
end
