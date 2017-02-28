class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_notification

  private

  def load_notification

  end
end
