#!/usr/bin/env ruby

require_relative '../lib/game_logic'

player1 = Player.new('X')
player2 = Player.new('O')

while player1.name == ''
  puts 'enter player one name?'
  player1.name = gets.chomp
end

while player2.name == ''
  puts 'enter player two name?'
  player2 = Player.new('O')
  player2.name = gets.chomp
end

board = Board.new

system 'clear'
system 'cls'

puts board.create_board

puts "#{player1.name} will be X"

puts "#{player2.name} will be O"

puts player1.letter.to_s

sleep 1

while board.game
  system 'clear'
  system 'cls'
  until board.valid
    puts board.create_board
    puts "It's #{player1.name} turn"
    puts ''
    input = gets.chomp.to_i
    next unless board.check_valid_move(input) == false

    system 'cls'
    puts 'Please use a valid number'
    sleep 1
  end
  board.square[input - 1] = player1.letter
  system 'cls'
  system 'clear'
  puts board.create_board
  if board.win(player1)
    puts "#{player1.name} is the WINNER"
    break
  end
  if board.draw
    puts "It's a draw!"
    break
  end
  system 'clear'
  system 'cls'
  board.valid = false
  until board.valid
    system 'clear'
    system 'cls'
    puts board.create_board
    puts "It's #{player2.name} turn"
    puts ''
    input = gets.chomp.to_i
    next unless board.check_valid_move(input) == false

    system 'cls'
    puts 'Please use a valid number'
    sleep 1
  end
  board.square[input - 1] = player2.letter
  system 'cls'
  system 'clear'
  puts board.create_board
  if board.win(player2)
    puts "#{player2.name} is the WINNER"
    break
  end
  board.valid = false
  system 'clear'
  system 'cls'
  puts board.create_board
end
