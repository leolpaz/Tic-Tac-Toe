require_relative '../lib/game_logic'

RSpec.describe Board do
  let(:board) { Board.new }
  player1 = Player.new('X')
  player2 = Player.new('O')

  describe '#check_valid_move' do
    it 'returns true if the input is on the square array' do
      expect(board.check_valid_move(1)).to be true
    end

    it 'returns false if the input is not on the array' do
      expect(board.check_valid_move(67)).to be false
    end
  end

  describe '#draw' do
    it 'returns true if there is no number left to pick' do
      board.square = %w[X O O O X X X X O]
      expect(board.draw).to be true
    end

    it 'returns false if there are other numbers to pick' do
      board.square = [1, 'O', 'O', 'O', 'X', 'X', 'X', 'X', 'O']
      expect(board.draw).to be nil
    end
  end

  describe '#win' do
    it 'returns true if it meets the win condition for player1' do
      board.square = ['X', 'X', 'X', 'O', 'O', 6, 7, 8, 9]
      expect(board.win(player1)).to be true
    end

    it 'returns true if it meets the win condition for player2' do
      board.square = ['X', 'X', '3', 'O', 'O', 'O', 7, 'X', 9]
      expect(board.win(player2)).to be true
    end

    it 'returns false if it meets the win condition for player1' do
      board.square = %w[X O O O X X X X O]
      expect(board.win(player1)).to be false
    end

    it 'returns false if it meets the win condition for player2' do
      board.square = %w[X O O O X X X X O]
      expect(board.win(player2)).to be false
    end
  end
end
