class RegistrationsController < ApplicationController

    def create 
        user = User.create!(email: params['user']['email'], password: params['user']['password'], password_confirmation: params['user']['password_confirmation'])

        if user 
            session[:user_id] = user.id 
            render json: { status: :created, user: user}

        else
            render json: { status: 500 } #if they were not able to create the user was not able to create or something happend, user will get the unprocessable entity error message, im guessing this is what the 500 error code is but i should probably look this up to be sure.
        end

    end

end