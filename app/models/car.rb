class Car < ActiveRecord::Base
  belongs_to :model
  has_one :make, :through => :model

end
