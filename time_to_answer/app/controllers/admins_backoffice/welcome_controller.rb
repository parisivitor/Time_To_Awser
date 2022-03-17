class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  def index
    @total_admins = AdminStatistic.total_admins
    @total_users = AdminStatistic.total_users
    @total_subjects = AdminStatistic.total_subjects
    @total_questions = AdminStatistic.total_questions
  end
end
