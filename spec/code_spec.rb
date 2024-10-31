# Maybe the code should build a starting code. Need to get back to it. Draw a diagram on it.
require 'spec_helper'
require 'code'
require 'gosu'

describe 'Code' do
  context 'when creating a blank code' do
    before(:example) do
      @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
                 Gosu::Color::YELLOW, Gosu::Color::CYAN]
      @code = Code.create_blank_code(@colors)
    end
    it 'creates a blank code with 4 bulbs' do
      expect(@code.bulbs.size).to eq(4)
    end
  end
end
