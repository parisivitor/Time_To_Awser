class Site::WelcomeController < SiteController
  def index
    @questions = Question.ordenation_desc(params[:page])
  end
end
