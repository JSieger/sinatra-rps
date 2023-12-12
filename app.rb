require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  outcome = ""

  if cpu_move == 1
    outcome = "tied"
  elsif cpu_move == 2
    outcome = "lost"
  else
    outcome = "won"
  end

  pp cpu_move
  pp outcome
end
