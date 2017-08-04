class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :device_type

  def device_type
    if browser.mobile?
      "mobile"
    elsif browser.tablet?
      "tablet"
    else
      "desktop"
    end
  end
end
