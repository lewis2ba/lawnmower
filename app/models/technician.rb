class Technician < ActiveRecord::Base
  has_many :customer
end
