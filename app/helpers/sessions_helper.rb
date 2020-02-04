module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    elsif cookies.signed[:user_id]
      user = User.find_by(id: cookies.signed[:user_id])
      if user&.authenticate(cookies[:remember_token])
        @current_user = user
        log_in(user)
      else
        @current_user = nil
      end
    end
  end

  def logged?
    !current_user.nil?
  end

  def remember(user)
    token = SecureRandom.urlsafe_base64.to_s
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = token
    user.remember_token = Digest::SHA1.hexdigest token
  end

  def forget
    session[:user_id] = nil
    cookies.delete(:remember_token)
    cookies.delete(:user_id)
  end
end
