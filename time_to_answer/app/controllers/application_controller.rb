class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protected
    def layout_by_resource
      return "admin_devise" if devise_controller? && resource_class = Admin
      # return "user_devise" if devise_controller? && resource_class = User
      "application"
    end
end
