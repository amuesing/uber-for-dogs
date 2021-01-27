class UberForDogs
  
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  attr_reader :user

  def run
    welcome
    # login_or_signup
    # wanna_see_favs?
    # some_method(some_argument)
    # exit
  end

  private

  def welcome
    "Is your dog ready for a walk?"
  end

  def login_or_signup
    # fit certain number of choices that will prompt users to act
    puts "Do you want to login or sign up?!"
    uname = gets.chomp
    # based on the choice, we choose either sign up, or login
    sign_up = User.create(username: uname)
    login = User.find_by(username: uname)
    end
end
