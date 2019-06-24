class ApplicationController < ActionController::API

  def user_payload(user)
    { user_id: user.id }
  end

  def encode_token(user)
    JWT.encode(user_payload(user), 'Bob', 'HS256')
  end

end
