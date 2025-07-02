class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :schedulings, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_one :anamnesis
  
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
