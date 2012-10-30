class Note < ActiveRecord::Base
  attr_accessible :content, :heading_id
  
  belongs_to :heading
end
