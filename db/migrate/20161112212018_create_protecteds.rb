class CreateProtecteds < ActiveRecord::Migration[5.0]
  def change
    create_table :protecteds do |t|
      t.integer :sub_id
      t.string :email

      t.timestamps
    end
  end
end
