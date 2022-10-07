class Tea < ApplicationRecord
  belongs_to :caffeine
  belongs_to :type

  validates :name, presence: true
  validates :description, presence: true
  validates :caffeine_id, presence: true
  validates :type_id, presence: true
end
