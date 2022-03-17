class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  # Kaminari
  paginates_per 10

  after_create :set_statistic

  private
  def set_statistic
    AdminStatistic.set_event(AdminStatistic::EVENTS[:total_admins])
  end
end
