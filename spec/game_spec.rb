# frozen_string_literal: true

require 'game'

describe Game do
  it 'can create an instance of game' do
    game = Game.new
    expect(game).to be_kind_of(Game)
  end

  it 'responds to the method play' do
    expect(subject).to respond_to(:play).with(2).arguments
  end

  it 'responds to the method cooridinate_in_common' do
    expect(subject).to respond_to(:coordinate_in_common).with(2).arguments
  end

  it 'responds to the method convert_to_integer' do
    expect(subject).to respond_to(:convert_to_integer).with(1).argument
  end

  # returning false

  it 'will return false if a pawn is next to a bishop' do
    expect(subject.play('a1', 'a2')).to eq(false)
  end

  it 'will return false if a pawn is on the same row as a bishop' do
    expect(subject.play('a2', 'a3')).to eq(false)
  end

  it 'will return false if a pawn is on the same column as a bishop' do
    expect(subject.play('a2', 'b2')).to eq(false)
  end

  it 'will return false if the bishop is on a8 and the pawn is on h7' do
    expect(subject.play('a8', 'h7')).to eq(false)
  end

  # it is currently returning true unless the bishop and pawn share a coordinate.

  # returning true

  it 'if the bishop is on a and the pawn is on b, the pawns number must be 1 less than the bishops' do
    expect(subject.play('a8', 'b7')).to eq(true)
  end

  it 'if the bishop is on a and the pawn is on c, the pawns number must be 2 less than the bishops' do
    expect(subject.play('a8', 'c6')).to eq(true)
  end

  it 'if the bishop is on b and the pawn is on a, the pawns number must be 1 greater than the bishops' do
    expect(subject.play('b7', 'a8')).to eq(true)
  end

  it 'if the bishop is on c and the pawn is on a, the pawns number must be 2 greater than the bishops' do
    expect(subject.play('c6', 'a8')).to eq(true)
  end

  it 'the pawn is on h1 and the bishop is on a, it must be on a8 to return true' do
    expect(subject.play('a8', 'h1')).to eq(true)
  end

  # convert_to_integer
  it 'will take all string integers in array and convert to an actual integer' do
    expect(subject.convert_to_integer(%w[a 1 a 2])).to eq(['a', 'a', 1, 2])
  end

  # check_if_unique
  it 'will return true if all elements in the array are unique' do
    expect(subject.check_if_unique(%w[a 1 b 2])).to eq(true)
  end

  it 'will return false if array is not entirely unique' do
    expect(subject.check_if_unique(%w[a 1 b 1])).to eq(false)
  end

end

# my code is now separating coordinates into individual elements and converting string numbers to real integers

# if the bishop is on a, for the program to return true
# when the pawn is on b, its column must be minus 1
# from whatever the a column is on
