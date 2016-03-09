class Customer < ActiveRecord::Base
  belongs_to :technician
  has_many :mowing

  

end
