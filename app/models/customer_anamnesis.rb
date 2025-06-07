class CustomerAnamnesis < ApplicationRecord
  belongs_to :anamnesis
  belongs_to :customer
end
