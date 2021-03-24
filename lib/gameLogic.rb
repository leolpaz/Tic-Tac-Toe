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

  def win_check(arr, letter)
    return true if [@square[arr[0]], @square[arr[1]], @square[arr[2]]].all?(letter)
  end

  def win(player)
    win = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [0, 4, 8]]
    win.each { |arr| return true if win_check(arr, player.letter) }
    false
  end

  def draw
    return true if @square.none?(Integer)
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
