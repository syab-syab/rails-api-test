class Color < ApplicationRecord
  has_many :something
  validates :name, presence: true
  # ミスったせいでidが4から始まった
end
