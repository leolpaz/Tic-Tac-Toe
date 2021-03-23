#!/usr/bin/env ruby

class Board
  attr_accessor :game
  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @game = true
  end

  def create_board
    puts '-----+-----+-----'
    puts "[ #{@square[0]} ] [ #{@square[1]} ] [ #{@square[2]} ]"
    puts "[ #{@square[3]} ] [ #{@square[4]} ] [ #{@square[5]} ]"
    puts "[ #{@square[6]} ] [ #{@square[7]} ] [ #{@square[8]} ]"
    puts '-----+-----+-----'
  end

  def check_valid_move(input)
    @input = input
    if !@square.include?(input)
      system 'cls'
      puts "Please use a valid number"
      sleep 2
    end
  end

  def check_win(input)
    case 
    when input == 9
      @game = false
      system "clear"
      system "cls"
      puts "Congratulations, you're the winner"
      sleep 1
    when input == 8
      @game = false
      system "clear"
      system "cls"
      puts "Tie!"
      sleep 1
    end
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

sleep 2



while board.game
  system "clear"
  system 'cls'
  puts board.create_board
  puts "It's #{player1} turn"
  puts ''
  puts ' Select an available cell'
  input = gets.chomp.to_i
  board.check_valid_move(input)
  board.check_win(input)
  system "clear"
  system 'cls'
  puts board.create_board
  puts "It's #{player2} turn"
  puts ''
  input = gets.chomp.to_i
  board.check_valid_move(input)
  board.check_win(input)
  system "clear"
  system 'cls'
  puts board.create_board
end