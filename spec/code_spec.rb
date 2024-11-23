# Maybe the code should build a starting code. Need to get back to it. Draw a diagram on it.
require 'spec_helper'
require 'code'
require 'gosu'

describe 'Code' do
  context 'when creating a blank code' do
    before(:example) do
      @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
                 Gosu::Color::YELLOW, Gosu::Color::CYAN]
      @x_location = 0
      @y_location = 0
      @code = Code.create_blank_code(@colors, @x_location, @y_location)
    end
    it 'creates a blank code with 4 bulbs' do
      expect(@code.bulbs.size).to eq(4)
    end
  end
  context 'when setting bulb locations' do
    before(:example) do
      @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
                 Gosu::Color::YELLOW, Gosu::Color::CYAN]
      @x_location = 0
      @y_location = 0
      @code = Code.create_blank_code(@colors, @x_location, @y_location)
      @code.set_bulb_locations
    end
    it 'first bulb has the same x location as the container x' do
      expect(@code.bulbs[0].x).to eq(0)
    end
    it 'first bulb has the same y location as the container y' do
      expect(@code.bulbs[0].y).to eq(0)
    end
    it 'second bulb x location is increased by 40 from the first bulb x' do
      expect(@code.bulbs[1].x).to eq(@code.bulbs[0].x + 40)
    end
    it 'second bulb y location is the same as the first bulb y' do
      expect(@code.bulbs[1].y).to eq(@code.bulbs[0].y)
    end
    it 'third bulb x location is increased by 40 from the second bulb x' do
      expect(@code.bulbs[2].x).to eq(@code.bulbs[1].x + 40)
    end
  end
end
