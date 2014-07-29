class Domain < ActiveRecord::Base
  
  scope :alpha_sort_forward, lambda { order("domains.domain_name ASC")}
  scope :alpha_sort_backward, lambda { order("domains.domain_name DESC")}
  scope :newest_purchase, lambda { order("domains.purchased_date DESC")}
  scope :oldest_purchase, lambda { order("domains.purchased_date ASC")}
  scope :expiring_soon, lambda { order("domains.expiration_date ASC")}
  scope :expiring_later, lambda { order("domains.expiration_date DESC")}
  
end
