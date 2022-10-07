class Type < ApplicationRecord
  has_many :tea
  validates :name, presence: true
end
