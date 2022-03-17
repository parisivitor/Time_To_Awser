class Subject < ApplicationRecord
  has_many :questions

  validates :description, presence: true, allow_blank: false

  paginates_per 15

  after_create :set_statistic

  private
  def set_statistic
    AdminStatistic.set_event(AdminStatistic::EVENTS[:total_subjects])
  end
end
