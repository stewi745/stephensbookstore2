class Book < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }
  
  def self.search(query)
    where("title like ?", "%#{query}%") 
  end
end