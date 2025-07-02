class Customer < ApplicationRecord
    has_many :schedulings
    has_one :customer_anamnesis
    belongs_to :user
end
