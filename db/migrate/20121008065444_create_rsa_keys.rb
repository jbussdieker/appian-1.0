class CreateRsaKeys < ActiveRecord::Migration
  def change
    create_table :rsa_keys do |t|
      t.integer :user_id
      t.string :key_data

      t.timestamps
    end
  end
end
