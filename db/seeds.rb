# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
5.times do |i|
    Goal.create(
      name: "Goal #{i + 1}",
      info: "Goal Description",
      completed: false
    )
  end