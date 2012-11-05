class Store < ActiveRecord::Base
  attr_accessible :cashback, :company
  has_many :store_favorites
  has_many :users, :through => :store_favorites
 
  
end
