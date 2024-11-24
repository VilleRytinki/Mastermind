# frozen_string_literal: true

require_relative 'player_bulb'
require_relative 'make_guess_button'
# This class should consist of bulbs which forms a code.
class Code
  attr_accessor :bulbs, :button

  def initialize(bulbs, x_location, y_location)
    @bulbs = bulbs
    @x_location = x_location
    @y_location = y_location
  end

  def self.create_blank_code(colors, x_location, y_location)
    bulbs = []
    4.times { bulbs << PlayerBulb.new(colors.first, colors, 0, 0) }
    new(bulbs, x_location, y_location)
  end

  def set_bulb_locations
    increment_x = 0
    @bulbs.each do |bulb|
      bulb.x = @x_location + increment_x
      bulb.y = @y_location
      increment_x += bulb.width * 2
    end
  end

  def set_make_guess_button_location
    x = @x_location + @bulbs[0].width + 20
    y = @y_location + @bulbs[0].height * 2
    @button = MakeAGuessButton.new(x, y, @bulbs[0].width * 4, @bulbs[0].height)
  end
end
