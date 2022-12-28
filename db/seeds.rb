# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Event.create!([
  {
    title: 'Event 1',
    description: 'First Event',
    starts_at: DateTime.now,
    ends_at: DateTime.now + 1.hour,
  },
  {
    title: 'Event 2',
    description: 'First Event',
    starts_at: DateTime.now - 1.days,
    ends_at: DateTime.now + 5.days
  },
  {
    title: 'Event 3',
    description: 'First Event',
    starts_at: DateTime.now + 3.days,
    ends_at: DateTime.now + 12.days
  }
])
