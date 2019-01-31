class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :my_id
      t.integer :other_user_id

      t.timestamps
    end
  end
end
