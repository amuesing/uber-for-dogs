class UberForDogs

  attr_reader :user

  def run
    welcome
    login_or_signup
  end

  private

  def welcome
    puts "Is your dog ready for a walk?"
  end

  def login_or_signup
    puts "Do you want to login or sign up?!"
    decision = STDIN.gets.chomp
    if decision == "sign up"
      sign_up
    end
    if decision == "login"
      login
    end
  end

  def sign_up
    puts "Cool, let's sign you up."
    puts "What's your username?"
    username = STDIN.gets.chomp
    puts "What is your name?"
    name = STDIN.gets.chomp
    id = User.create(username: username, name: name)
    puts "Hello! Welcome to Uber for Dogs"
    create_appointment(id)
  end

  def login
    puts "Enter Username"
    uname = STDIN.gets.chomp
    if User.find_by(username: uname)
      puts "Welcome Back!"
      id = User.find_by(username: uname).id
      create_appointment(id)
    else
      puts "Username Unknown"
      sign_up
    end
  end

  def create_appointment(id)
    puts "What is the username of the walker you like to care for your dog?"
    walker_input = STDIN.gets.chomp
    walker_id = DogWalker.find_by(username: walker_input).id
    puts "What date would you like to schedule your appointment for? (format: 00.00.00)"
    date = STDIN.gets.chomp
    Appointment.create(user_id: id, dog_walker_id: walker_id, date_app: date)
    puts "Thank you for scheduling your appointment with #{walker_input}, on #{date}"
    see_all_appointments(id)
  end

  def see_all_appointments(id)
    puts "Would you like to view your appointments? (y/n)"
    answer1 = STDIN.gets.chomp
    if answer1 == "y"
      #id.Appointment.each do |view_apps|
      #  puts "You have appointments on #{view_apps.date_app}"
      #end
      puts Appointment.all.select{|user| user.user_id == id}
      puts "Would you like to change the date of one of your appointments (y/n)"
      answer2 = STDIN.gets.chomp
      if answer2 == "y"
        puts "What is the date of the appointment you would like to change? (00.00.00)"
        from_date = STDIN.gets.chomp
        puts "What is the date you would like to change the appointment to?"
        to_date = STDIN.gets.chomp
        change_date = Appointment.find_by(date_app: from_date)
        change_date.update(date_app: to_date)
        puts "Appointment changed to #{to_date}"
      end
    end
    cancel_appointment(id)
  end


  def cancel_appointment(id)
    puts "Would you like to cancel an appointment? (y/n)"
    answer = STDIN.gets.chomp
    if answer == "y"
      puts "What is the date of the appointment you would like to cancel?"
      date = STDIN.gets.chomp
      destroy_date = Appointment.find_by(date_app: date)
      destroy_date.destroy
      puts "Appointment Cancelled"
      puts "Do you want to schedule another appointment? (y/n)"
      answer1 = STDIN.gets.chomp
      if answer1 == "y"
        create_appointment(id)
      else
        puts "Goodbye"
        exit
      end
    else
      puts "Goodbye"
      exit
    end
  end
end