class Service < ApplicationRecord
  belongs_to :user
  has_many :service_schedulings
  validates :name, :value, :duration, presence: true
  validates :duration, comparison: {greater_than: 0}
end
