#!/usr/bin/env ruby

require_relative '../lib/gameLogic'

puts 'enter player one name?'
player1 = gets.chomp.to_s
puts 'enter player two name?'
player2 = gets.chomp.to_s

board = Board.new

system 'clear'
system 'cls'

puts board.create_board

puts "#{player1} will be X"

puts "#{player2} will be O"

sleep 1

while board.game
  system 'clear'
  system 'cls'
  until board.valid
    puts board.create_board
    puts "It's #{player1} turn"
    puts ''
    input = gets.chomp.to_i
    board.check_valid_move(input)
  end
  system 'clear'
  system 'cls'
  board.valid = false
  until board.valid
    puts board.create_board
    puts "It's #{player2} turn"
    puts ''
    input = gets.chomp.to_i
    board.check_valid_move(input)
  end
  board.valid = false
  system 'clear'
  system 'cls'
  puts board.create_board
end
