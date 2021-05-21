# frozen_string_literal: true

class Game
  def play(bishop, pawn)
    cooridinate_in_common(bishop, pawn)
  end

  def cooridinate_in_common(bishop, pawn)
    b = bishop.split('')
    p = pawn.split('')
    piece_array = b + p
    convert_to_integer(piece_array)
    check_if_unique(piece_array)
  end

  def check_if_unique(piece_array)
    piece_array.uniq.size == piece_array.size
  end

  def convert_to_integer(piece_array)
    piece_array.sort!

    array2 = []

    array2 << piece_array.slice(0)
    array2 << piece_array.slice(1)

    piece_array.delete_at(0)
    piece_array.delete_at(0)

    array2.map!(&:to_i)

    piece_array << array2.slice(0)
    piece_array << array2.slice(1)
  end
end

# if letter is same, I must return false
# if number is same, I must return false
