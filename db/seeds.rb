# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

League.create!(sport: "basketball", skill_level: "casual")
League.create!(sport: "basketball", skill_level: "competitive")
League.create!(sport: "volleyball", skill_level: "casual")
League.create!(sport: "volleyball", skill_level: "competitive")


40.times do
  User.create!(email: Faker::Internet.email, password: "password", name: Faker::StarWars.character, league_id: rand(1..4))
end

# User.create!(email: "test@test.com", password: "123456", name: "Joey", league_id: rand(1..4), admin: true)

10.times do |i|
  Team.create!(name: "#{Faker::Team.creature}-#{i}", wins: rand(0..10), losses: rand(0..10), ties: 0, league_id: 2)
end
10.times do |i|
  Team.create!(name: "#{Faker::Team.creature}-#{i}", wins: rand(0..10), losses: rand(0..10), ties: 0, league_id: 4)
end
10.times do |i|
  Team.create!(name: "#{Faker::Team.creature}-#{i}", wins: rand(0..10), losses: rand(0..10), ties: 0, league_id: 1)
end
10.times do |i|
  Team.create!(name: "#{Faker::Team.creature}-#{i}", wins: rand(0..10), losses: rand(0..10), ties: 0, league_id: 3)
end

counter = 1
20.times do
  TeamPlayer.create!(player_id: counter, team_id: rand(1..10))
  counter += 1
end

6.times do
  Game.create!(starts_at: Faker::Date.forward(30), league_id: rand(1..4))
end

TeamGame.create!(team_id: 1, game_id: 1)
TeamGame.create!(team_id: 2, game_id: 1)
TeamGame.create!(team_id: 3, game_id: 2)
TeamGame.create!(team_id: 4, game_id: 2)
TeamGame.create!(team_id: 5, game_id: 3)
TeamGame.create!(team_id: 6, game_id: 3)
TeamGame.create!(team_id: 7, game_id: 4)
TeamGame.create!(team_id: 8, game_id: 4)
TeamGame.create!(team_id: 9, game_id: 5)
TeamGame.create!(team_id: 10, game_id: 5)
TeamGame.create!(team_id: 1, game_id: 6)
TeamGame.create!(team_id: 2, game_id: 6)

