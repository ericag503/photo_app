class Account < ActiveRecord::Base
  has_secure_password
  has_many :photos
  validates :username, :presence => true
  validates_uniqueness_of :username
end
