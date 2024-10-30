require 'spec_helper'
require 'player_bulb'
require 'gosu'

describe 'Player Bulb' do
  before(:example) do
    @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
               Gosu::Color::YELLOW, Gosu::Color::CYAN]
    @player_bulb = PlayerBulb.new(@colors.first, @colors)
  end
  it 'initializes with default width as 20' do
    expect(@player_bulb.width).to eq(20)
  end
  it 'initializes with default height as 40' do
    expect(@player_bulb.height).to eq(40)
  end
  it 'initializes with default color as Gosu White' do
    expect(@player_bulb.color).to eq(Gosu::Color::WHITE)
  end
  it 'changes color to the next available option' do
    @player_bulb.switch_color
    expect(@player_bulb.color).to eq(Gosu::Color::BLUE)
  end
  it 'changes color to the first on the list when the current color is the last element' do
    @player_bulb.color = @colors.last
    @player_bulb.switch_color
    expect(@player_bulb.color).to eq(@colors.first)
  end
end
