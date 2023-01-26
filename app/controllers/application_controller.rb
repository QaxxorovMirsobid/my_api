class ApplicationController < ActionController::API
  # before_action :authenticate

  def authenticate
    begin
      token = request.headers['Authorization'].split(' ').last
      payload, header = JWT.decode(token, Rails.application.secrets.secret_key_base)
      @current_user = User.find(payload['user_id'])
    rescue
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end