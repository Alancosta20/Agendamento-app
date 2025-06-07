class Option < ApplicationRecord
  belongs_to :question
  has_many :answer_options
end
