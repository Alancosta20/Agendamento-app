class AnswerOption < ApplicationRecord
  belongs_to :customer_anamnesis
  belongs_to :option
  
end
