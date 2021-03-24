#!/usr/bin/env ruby
class Board
  attr_accessor :game, :valid, :square


  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @game = true
    @valid = false
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
      puts 'Please use a valid number'
      sleep 1
      @valid = false
    else
      @valid = true
    end
  end

 def win 
  win = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
  win.map{|a| winner = player if win[0] == player.letter}
 end 

end

class Player < Board
  attr_accessor :name
  attr_reader :letter
 def initialize(letter)
  @name = ""
  @letter = letter
 end
end 


=begin
figure out the win conditions
create a way to record previous player choices
create a way to check if the player choices match a win condition
create a way to check draw condition
  
=end