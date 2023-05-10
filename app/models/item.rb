class Item < ApplicationRecord
    has_many :order_details
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_numericality_of :price
end

