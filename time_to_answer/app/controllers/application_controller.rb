class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :check_pagination



  protected
    def layout_by_resource
      return "#{resource_class.to_s.downcase}_devise" if devise_controller?
      "application"
    end

    def check_pagination
      unless user_signed_in?
        params.extract!(:page)
      end
    end

end
