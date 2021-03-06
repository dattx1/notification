class NotificationsController < ApplicationController
  def index
    @notifications = Notification.all.reverse
  end

  def new
    @new_notification = Notification.new
    render layout: false
  end

  def create
    @notification = Notification.new event_params
    if @notification.save
      flash[:success] = "Create success."
      redirect_to new_notification_path
    end
  end

  private

  def event_params
    params.require(:notification).permit :event
  end
end
