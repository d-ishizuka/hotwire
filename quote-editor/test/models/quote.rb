class Quote < ApplicationRecord
  has_many :line_item_dates, dependent: :destroy
  validates :name, presence: true
end
