class Make < ActiveRecord::Base
  has_many :models
  has_many :cars, :through => :models
end
