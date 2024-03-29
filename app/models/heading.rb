class Heading < ActiveRecord::Base
  attr_accessible :title, :user_id
  
  belongs_to :user
  has_many :notes, :dependent => :destroy
end
