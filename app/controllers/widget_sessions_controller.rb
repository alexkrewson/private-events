class WidgetSessionsController < ApplicationController

    # "Delete" widget session data
  def destroy
    # Remove the widget from the session
    puts "you maaaaaaaaaaaade it iiiiiiiiiiiiiiiiiin!!!!!!!!!!!!!!!"
    @clear = session[:user_id] = nil

    redirect_to users_path
  end


end
