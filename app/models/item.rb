class Item < ActiveRecord::Base

  belongs_to :user

  validates :name, presence: true

  default_value_for :quantity, 1

end
