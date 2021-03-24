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

  def win(player)
    win = [[0, 1, 2]]
    if @square[0] == player.letter and @square[1] == player.letter and @square[2] == player.letter
      system 'cls'
      true
    elsif @square[3] == player.letter and @square[4] == player.letter and @square[5] == player.letter
      system 'cls'
      true
    elsif @square[6] == player.letter and @square[7] == player.letter and @square[8] == player.letter
      system 'cls'
      true
    elsif @square[0] == player.letter and @square[3] == player.letter and @square[6] == player.letter
      system 'cls'
      true
    elsif @square[1] == player.letter and @square[4] == player.letter and @square[7] == player.letter
      system 'cls'
      true
    elsif @square[2] == player.letter and @square[5] == player.letter and @square[8] == player.letter
      system 'cls'
      true
    elsif @square[2] == player.letter and @square[4] == player.letter and @square[6] == player.letter
      system 'cls'
      true
    elsif @square[0] == player.letter and @square[4] == player.letter and @square[8] == player.letter
      system 'cls'
      true
    elsif @square.none?(Integer)
      'draw'
    end
  end
end

class Player
  attr_accessor :name
  attr_reader :letter

  def initialize(letter)
    @name = ''
    @letter = letter
  end
end

# create a way to record previous player choices
# create a way to check if the player choices match a win condition
# create a way to check draw condition
#
