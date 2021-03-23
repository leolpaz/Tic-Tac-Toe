#!/usr/bin/env ruby

class Board
  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  def create_board 
    puts "-----+-----+-----"
    puts "[ #{@square[0]} ] [ #{@square[1]} ] [ #{@square[2]} ]"
    puts "[ #{@square[3]} ] [ #{@square[4]} ] [ #{@square[5]} ]"
    puts "[ #{@square[6]} ] [ #{@square[7]} ] [ #{@square[8]} ]"
    puts "-----+-----+-----"
  end
end

class Player
  attr_accessor :name
end

player1 = Player.new
puts "enter player one name?"
name = gets
 
player2 = Player.new
puts "enter player two name?"
name = gets


board = Board.new

puts board.create_board


