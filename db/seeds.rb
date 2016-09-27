# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
league = League.create!(sport: "basketball", skill_level: "casual")
league2 = League.create!(sport: "volleyball", skill_level: "casual")
user1 = User.create!(email: "joe@me.com", password: "password", name: "Joey", admin: true)
user2 = User.create!(email: "joe2@movie.com", password: "password", name: "Joey")
user3 = User.create!(email: "joe3@as.com", password: "password", name: "Joey")

team = Team.create!(name: "Salamanders", wins: 1, losses: 4, ties: 0, league_id: 1)

team2 = Team.create!(name: "Gophers", wins: 0, losses: 4, ties: 1, league_id: 1)

game1 = Game.create!(starts_at: '2014-08-21 18:14:12', winner: 1, loser: 2, league_id: 1)

team_player = TeamPlayer.create!(player_id: 1, team_id: 1)
team_player1 = TeamPlayer.create!(player_id: 2, team_id: 2)
team_player2 = TeamPlayer.create!(player_id: 3, team_id: 2)

team_games = TeamGame.create!(team_id: 1, game_id: 1)
team_games2 = TeamGame.create!(team_id: 2, game_id: 1)


