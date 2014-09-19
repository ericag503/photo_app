class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :account_id
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size

      t.timestamps
    end
  end
end
