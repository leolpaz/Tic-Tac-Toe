class Board
  attr_accessor :valid
  attr_reader :game, :square

  def initialize
    @square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @game = true
    @valid = false
  end

  def create_board
    "     -----+-----+-----
     [ #{@square[0]} ] [ #{@square[1]} ] [ #{@square[2]} ]
     [ #{@square[3]} ] [ #{@square[4]} ] [ #{@square[5]} ]
     [ #{@square[6]} ] [ #{@square[7]} ] [ #{@square[8]} ]
     -----+-----+-----"
  end

  def check_valid_move(input)
    @input = input
    if !@square.include?(input)
      @valid = false
      false
    else
      @valid = true
    end
  end

  def win(player)
    win = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [0, 4, 8]]
    win.each { |arr| return true if win_check(arr, player.letter) }
    false
  end

  def draw
    true if @square.none?(Integer)
  end

  private

  def win_check(arr, letter)
    true if [@square[arr[0]], @square[arr[1]], @square[arr[2]]].all?(letter)
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
