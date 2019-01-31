class UsersController < ApplicationController
    
    def index
        render("user_templates/index.html.erb")
    end

end