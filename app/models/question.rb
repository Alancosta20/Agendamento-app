class Question < ApplicationRecord
  belongs_to :anamnesis
  has_many :options 
end
