#!/usr/bin/env ruby

class Board
  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def create_board
    puts '-----+-----+-----'
    puts "[ #{@square[0]} ] [ #{@square[1]} ] [ #{@square[2]} ]"
    puts "[ #{@square[3]} ] [ #{@square[4]} ] [ #{@square[5]} ]"
    puts "[ #{@square[6]} ] [ #{@square[7]} ] [ #{@square[8]} ]"
    puts '-----+-----+-----'
  end
end

class Player
  def initialize(name)
    @name = name.to_s
  end
end

player1 = Player.new(@name)
puts 'enter player one name?'
player1 = gets.chomp

player2 = Player.new(@name)
puts 'enter player two name?'
player2 = gets.chomp

board = Board.new

puts board.create_board

puts "#{player1} will be X"

puts "#{player2} will be O"

loop do
  system 'cls'
  puts board.create_board
  puts "It's #{player1} turn"
  puts ''
  puts ' Select an available cell'
  input = gets.chomp.to_i
  if input <= 0 or input > 9
    system 'cls'
    puts board.create_board
    puts 'This would catch invalid inputs and reset the loop'
  end
  puts "It's #{player2} turn"
  puts ''
  input = gets.chomp.to_i
  if input <= 0 or input > 9
    system 'cls'
    puts board.create_board
    puts 'This would catch invalid inputs and reset the loop'
  end
  puts 'Check winner an drawing conditions'
  puts "Enter 9 to win and 8 to draw or anything else to loop back to player1's turn"
  input = gets.chomp.to_i
  case input
  when 9
    puts "#{player1} is the winner"
    break
  when 8
    puts "It's a DRAW!"
    break
  end
end
