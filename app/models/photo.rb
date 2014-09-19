class Photo < ActiveRecord::Base
  belongs_to :account

  validates :avatar, :attachment_presence => true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachement_file_name :avatar, :matches [/png\Z/, /jpe?g\Z/]
end
