class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :match_id
      t.text :chat

      t.timestamps
    end
  end
end
