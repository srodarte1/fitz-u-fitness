module CurrentUserConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_current_user
    end

    def set_current_user
        if session[:user_id]@current_user = User.find(session[:user_id])
        end
        # Do we have a user id in the session? Yes? Okay, cool! Now we can just use this to query user, set the instance variable, and now any method in our app does not have to check if tokens are valid or anything like that. Just checks, do I have a user? Yes, I do, now lets keep building. This is basically all this is doing.
        
    end 
end