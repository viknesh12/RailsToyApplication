class MicropostsController < ApplicationController
    before_action:logged_in_user, only: [:create, :destroy]
    def create
        @micropost = current_user.microposts.build(microppst_params)
        if @micropost.save
            flash[:success] = "micropost created!"
            redirect_to root_url
        else
            render 'static_pages/home'    
        end 
    end

    def destroy
    end

    private 
    def microppst_params
    params.require(:micropost).permit(:content)
  end
end
