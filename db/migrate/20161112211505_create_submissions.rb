class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.integer :sub_id
      t.string :img_id
      t.string :permission
      t.string :email

      t.timestamps
    end
  end
end
