class Anamnesis < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :customer_anamneses
end
