require 'game'


describe Game do
  it 'can create an instance of game' do
    game = Game.new
    expect(game).to be_kind_of(Game)
  end
end
