module UsersHelper
  def loggedInUser
    if session[:user_id].present?
      User.find_by_id(session[:user_id]).name.to_s
    else
      'Welcome'
    end
  end
end
