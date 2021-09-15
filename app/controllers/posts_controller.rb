class PostsController < ApplicationController

    def index 
    end 

    private 
    
    def post_params 
        params.require(:post).permit(:description, :image)
    end 
end
