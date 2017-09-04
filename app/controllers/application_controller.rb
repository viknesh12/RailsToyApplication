class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def say_hello
    puts "modify check"  
    render html: "Hello World!"
  end
  
  include SessionsHelper
end
