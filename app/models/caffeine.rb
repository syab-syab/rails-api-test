class Caffeine < ApplicationRecord
  has_many :tea
  validates :amount, presence: true
end
