class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :sub_id
      t.string :tag_info

      t.timestamps
    end
  end
end
