require "./players"
require "./question.rb"

puts "Enter player1 name"
player1_name = gets.chomp
player1 = Players.new(player1_name)

puts "Enter player2 name"
player2_name = gets.chomp
player2 = Players.new(player2_name)

count=0
# current player
while (player1.alive && player2.alive) do 
  player = (count == 0) ? player1 : player2
  puts '----- NEW TURN -----'
  question = Questions.new
  print "#{player.name}:#{question.display}"

  answer = gets.chomp
  if answer.to_i == question.answer
    puts "YES! you are correct"
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"    
  else
    player1.lives -= 1
    puts "Seriously? No!"
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"    
  end
  count = (count + 1) % 2
end

if (player1.lives == 0)
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!'
else
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!' 
end 
 
