class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.references :user, index: true, foreign_key: true
      

      t.timestamps
    end
    add_index :uploads, [:user_id, :created_at]
  end
end
