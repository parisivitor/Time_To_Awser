class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protected
    def layout_by_resource
      return "#{resource_class.to_s.downcase}_devise" if devise_controller?
      "application"
    end
end
