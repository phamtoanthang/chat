class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :sender_id
      t.integer :recipent_id
      t.datetime :read_at

      t.timestamps null: false
    end
  add_index :messages, :sender_id
  add_index :messages, :recipent_id
  end
end
