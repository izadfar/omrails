class Pin < ActiveRecord::Base
  attr_accessible :description, :image


  validates :description, presence: true, :length => {:maximum => 35}
  validates :user_id, presence: true
  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
  						content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }

  belongs_to :user
  
  
end
