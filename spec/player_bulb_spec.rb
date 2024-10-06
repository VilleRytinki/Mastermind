require 'spec_helper'
require 'player_bulb'
require 'gosu'

describe 'Player Bulb' do
  let(:player_bulb) { PlayerBulb.new }
  it 'initializes with default width as 20' do
    expect(player_bulb.width).to eq(20)
  end
  it 'initializes with default height as 40' do
    expect(player_bulb.height).to eq(40)
  end
  it 'initializes with default color as Gosu White' do
    expect(player_bulb.color).to eq(Gosu::Color::WHITE)
  end
end
