class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue
  validates :annual_revenue, :numericality => { :greater_than_or_equal_to => 0 }
end
