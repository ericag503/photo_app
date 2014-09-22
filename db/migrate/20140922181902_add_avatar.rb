class AddAvatar < ActiveRecord::Migration
  def self.up
    add_attachment :accounts, :avatar
  end

   def self.down
    remove_attachment :accounts, :avatar
  end
end
