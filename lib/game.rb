# frozen_string_literal: true

class Game
  def play(bishop, pawn)
    b = bishop.split('')
    p = pawn.split('')
    piece_array = b + p
    piece_array.uniq.size == piece_array.size
  end
end

# if letter is same, I must return false
# if number is same, I must return false
