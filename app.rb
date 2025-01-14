require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  @move_text = ""
  @outcome = ""

  if cpu_move == 1
    @move_text = "rock"
    @outcome = "tied"
  elsif cpu_move == 2
    @move_text = "paper"
    @outcome = "lost"
  else
    @move_text = "scissors"
    @outcome = "won"
  end

  erb(:rock)
end

get("/paper") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  @move_text = ""
  @outcome = ""

  if cpu_move == 1
    @move_text = "rock"
    @outcome = "won"
  elsif cpu_move == 2
    @move_text = "paper"
    @outcome = "tied"
  else
    @move_text = "scissors"
    @outcome = "lost"
  end

  erb(:paper)
end

get("/scissors") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  @move_text = ""
  @outcome = ""

  if cpu_move == 1
    @move_text = "rock"
    @outcome = "lost"
  elsif cpu_move == 2
    @move_text = "paper"
    @outcome = "won"
  else
    @move_text = "scissors"
    @outcome = "tied"
  end

  erb(:scissors)
end
