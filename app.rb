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
  move_text = ""
  outcome = ""

  if cpu_move == 1
    move_text = "rock"
    outcome = "tied"
  elsif cpu_move == 2
    move_text = "paper"
    outcome = "lost"
  else
    move_text = "scissors"
    outcome = "won"
  end

  "
  <h2>
    We played rock!
  </h2>

  <h2>
   They played #{move_text}!
  </h2>

  <h2>
    We #{outcome}!
  </h2>

  <a href='/'>
    Rules
  </a>
  "
end

get("/paper") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  move_text = ""
  outcome = ""

  if cpu_move == 1
    move_text = "rock"
    outcome = "won"
  elsif cpu_move == 2
    move_text = "paper"
    outcome = "tied"
  else
    move_text = "scissors"
    outcome = "lost"
  end

  "
  <h2>
    We played paper!
  </h2>

  <h2>
   They played #{move_text}!
  </h2>

  <h2>
    We #{outcome}!
  </h2>

  <a href='/'>
    Rules
  </a>
  "
end

get("/scissors") do
  # 1 = rock, 2 = paper, 3 = scissors
  cpu_move = rand(1..3)
  move_text = ""
  outcome = ""

  if cpu_move == 1
    move_text = "rock"
    outcome = "lost"
  elsif cpu_move == 2
    move_text = "paper"
    outcome = "won"
  else
    move_text = "scissors"
    outcome = "tied"
  end

  "
  <h2>
    We played scissors!
  </h2>

  <h2>
   They played #{move_text}!
  </h2>

  <h2>
    We #{outcome}!
  </h2>

  <a href='/'>
    Rules
  </a>
  "
end
