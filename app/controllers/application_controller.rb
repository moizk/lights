class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :loop_one, :flash
  def loop_one
    client = Hue::Client.new
    light = client.lights.first
    light.set_state({:effect => 'colorloop'})
  end

  def flash
    client = Hue::Client.new
    light = client.lights.first
    light.set_state({:alert => 'lselect'})
  end
end
