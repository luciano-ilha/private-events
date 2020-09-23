module UsersHelper
    def loggedInUser
        if session[:user_id].present?
         "Welcome #{ User.find_by_id(session[:user_id]).name}"
        else
            "Welcome"
        end
    end

end
