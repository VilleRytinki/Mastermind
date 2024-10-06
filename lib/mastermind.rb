# frozen_string_literal: true

require_relative 'player_bulb'
# Main game loop control for mastermind
class MasterMind < Gosu::Window
  def initialize
    super 2304, 1296, fullscreen: true
    self.caption = 'MasterMind The Game'

    @background_image = Gosu::Image.new('assets/images/origbig.png')
    @player_bulb = PlayerBulb.new
  end

  def update
    # main game logic here according to documentation
    @player_bulb.color = Gosu::Color::GRAY if Gosu.button_down? Gosu::KB_SPACE
  end

  def draw
    @background_image.draw(0, 0, 0)
    bulb_x = 300
    bulb_y = 300
    Gosu.draw_rect(bulb_x, bulb_y, @player_bulb.width, @player_bulb.height,
                   @player_bulb.color)
  end

  def button_down(button)
    close if button == Gosu::KB_ESCAPE
  end
end
