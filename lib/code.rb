# frozen_string_literal: true

require_relative 'player_bulb'
# This class should consist of bulbs which forms a code.
class Code
  attr_accessor :bulbs

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
      increment_x += 40
    end
  end
end
