require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new({name:"some Random" , email:"somerandom@gmail.com"})
    @invalidUser1 = User.new({name:"" , email:"somerandom@gmail.com"})
  end
  
  test "this is to test user objects are valid" do
    assert @user.valid?
    assert !@invalidUser1.valid?
  end
end
