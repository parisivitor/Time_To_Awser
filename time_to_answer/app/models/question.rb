class Question < ApplicationRecord
  belongs_to :subject

  validates :description, presence: true, allow_blank: false
end
