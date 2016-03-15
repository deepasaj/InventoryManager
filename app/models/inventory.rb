class Inventory < ActiveRecord::Base
  belongs_to :apparel_type
  belongs_to :size
end
