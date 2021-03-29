require_relative "../lib/game_logic.rb"

RSpec.describe Board do
  let (:board) {Board.new}

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
      board.square = ['X', 'O', 'O', 'O', 'X', 'X', 'X', 'X', 'O']
      expect(board.draw).to be true
    end

    it 'returns false if there are other numbers to pick' do
    board.square = [1, 'O', 'O', 'O', 'X', 'X', 'X', 'X', 'O']
    expect(board.draw).to be nil
  end

end

end