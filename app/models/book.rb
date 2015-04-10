class Book < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }
  
  def self.search(query)
    # where(:name, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end
end