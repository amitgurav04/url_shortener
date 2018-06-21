class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :input_url
      t.text :output_url
      t.integer :http_status, :default => 301 # default to :permanent

      t.timestamps
    end
    add_index :links, :input_url
    change_column(:links, :id, :bigint, null: false, unique: true)
  end
end
