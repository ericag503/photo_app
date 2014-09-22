class DropColumns < ActiveRecord::Migration
  def change
    remove_column :accounts, :avatar_file_name
    remove_column :accounts, :avatar_content_type
    remove_column :accounts, :avatar_file_size
    remove_column :accounts, :avatar_updated_at
    remove_column :photos, :avatar_file_name
    remove_column :photos, :avatar_content_type
    remove_column :photos, :avatar_file_size
  end
end
