# frozen_string_literal: true

require 'player_bulb'
# This class should consist of bulbs which forms a code.
class Code
  attr_accessor :bulbs

  def initialize(bulbs)
    @bulbs = bulbs
  end

  def self.create_blank_code(colors)
    bulbs = []
    4.times { bulbs << PlayerBulb.new(colors.first, colors, 0, 0) }
    new(bulbs)
  end
end
