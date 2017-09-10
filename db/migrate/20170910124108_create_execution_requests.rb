class CreateExecutionRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :execution_requests do |t|
      t.references :hook, null: false
      t.json :arguments
      t.integer :status
      t.timestamps
    end
  end
end
