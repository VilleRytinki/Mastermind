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

  def initialize(color, color_options)
    @width = 20
    @height = 40
    @color = color
    @color_options = color_options
  end

  def switch_color
    current_color_index = @color_options.index(@color)
    @color = if current_color_index == @color_options.size - 1
               @color_options[0]
             else
               @color_options[current_color_index + 1]
             end
  end
end
