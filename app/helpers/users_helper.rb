module UsersHelper
    def loggedInUser
        User.find_by_id(session[:user_id]).name 
    end

end
