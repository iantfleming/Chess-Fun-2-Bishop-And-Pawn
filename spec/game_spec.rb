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

  it 'will return false if a pawn is next to a bishop' do
    expect(subject.play('a1', 'a2')).to eq(false)
  end
end
