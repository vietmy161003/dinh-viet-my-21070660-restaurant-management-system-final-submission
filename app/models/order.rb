class Order < ApplicationRecord
    has_many :order_detail
    validate :year_up_to_present
def year_up_to_present
 errors.add(:field_name, 'Year must not be in the future') if year > Time.now.year
end
end