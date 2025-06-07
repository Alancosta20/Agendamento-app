class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :service_schedulings
end
