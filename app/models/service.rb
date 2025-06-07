class Service < ApplicationRecord
  belongs_to :user
  has_many :service_schedulings
  
end
