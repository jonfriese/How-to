class Tutorial < ActiveRecord::Base
  attr_accessible :list
  has_many :steps
end
