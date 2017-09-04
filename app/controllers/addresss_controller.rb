class AddresssController < ActionController::Base
  protect_from_forgery with: :exception
  
  def index
    puts "modify check"  
    render html: "Hello World!"
  end
  
end
