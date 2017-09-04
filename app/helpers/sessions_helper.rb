module SessionsHelper
    
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def current_user
        puts "calling current_user"
        if (user_id = session[:user_id])
        @current_user ||=  User.find_by(id: session[:user_id]) 
       # elsif (user_id = cookies.signed[:user_id])
       # user = User.find_by(id: user_id) 
       #    if user && user.authenticated?(cookies[:remember_token])
       #     log_in user
       #     @current_user = user
       #     puts "using permanent cookies"
       #     end
        end     
    end
    
    def logged_in?   
        puts "calling logged_in"
         val =!current_user.nil?
         puts val
         puts "ending logged_in"         
         return val
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end    
    
    def remember(user)
        user.remember
        cookies.permanent.signed[:user_id] = user.id 
        cookies.permanent[:remember_token] = user.remember_token
    end  

    def store_location
        session[:forwarding_url] = request.url if request.get?
    end    

    def redirect_back_or(default)
        redirect_to(session[:forwarding_url] || default)
        session.delete(:forwarding_url)
    end


end
