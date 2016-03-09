class Technician < ActiveRecord::Base
  has_many :customer
  has_many :mowing
end
