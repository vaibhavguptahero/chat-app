class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :room_id
      t.references :user, null: false, foreign_key: true
      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
