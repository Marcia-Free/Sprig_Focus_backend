# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#--------------GOALS------
3.times do |i|
    Goal.create(
      name: "Test Goal #{i + 1}",
      info: "Goal Description Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 
      Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.",
    )
  end


#--------------TASKS------
  3.times do |i|
    Task.create(
      name: "Test Task #{i + 1}",
      description: "Task Description Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et 
      magnis dis parturient montes, nascetur ridiculus mus.",
      goal_id: 4
    )
  end

  2.times do |i|
    Task.create(
      name: "Test Task #{i + 1}",
      description: "Task Description Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et 
      magnis dis parturient montes, nascetur ridiculus mus.",
      goal_id: 11
    )
  end

  4.times do |i|
    Task.create(
      name: "Test Task #{i + 1}",
      description: "Task Description Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et 
      magnis dis parturient montes, nascetur ridiculus mus.",
      goal_id: 8
    )
  end

  #--------------TEST USER------
  User.destroy_all

  
  user1 = User.create(
    username: "sample", 
    email: 'sample@gmail.com',
    password: "sample")
  


 admin = User.create(
    username: "admin",
    email: 'Admin@gmail.com',
    password: "password",
  )


puts 'seeded'