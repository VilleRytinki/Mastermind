# frozen_string_literal: true

require 'gosu'

# Provides a bulb for a player to set code guesses by changing the color of the bulb.
#
# Example:
# bulb = PlayerBulb.new
# bulb.color = :black
# bulb.height = 400
class PlayerBulb
  attr_accessor :x, :y, :color
  attr_reader :width, :height

  def initialize
    @width = 20
    @height = 40
    @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
               Gosu::Color::YELLOW, Gosu::Color::CYAN]
    @color = @colors.first
  end
end
