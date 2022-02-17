class Subject < ApplicationRecord
  has_many :questions

  validates :description, presence: true, allow_blank: false

  paginates_per 5
end
