class Step < ActiveRecord::Base
  attr_accessible :list, :parent_id
  belongs_to :tutorial
end
