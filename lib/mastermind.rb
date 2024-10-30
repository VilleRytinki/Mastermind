# frozen_string_literal: true

require_relative 'player_bulb'
# Main game loop control for mastermind
class MasterMind < Gosu::Window
  def initialize
    super 2304, 1296, fullscreen: true
    self.caption = 'MasterMind The Game'

    @background_image = Gosu::Image.new('assets/images/origbig.png')
    @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
               Gosu::Color::YELLOW, Gosu::Color::CYAN]
    bulb_x = 300
    bulb_y = 300
    @player_bulb = PlayerBulb.new(@colors.first, @colors, bulb_x, bulb_y)
  end

  def update
    # main game logic here according to documentation
  end

  def draw
    @background_image.draw(0, 0, 0)

    Gosu.draw_rect(@player_bulb.x, @player_bulb.y, @player_bulb.width, @player_bulb.height,
                   @player_bulb.color)
  end

  def button_down(button)
    close if button == Gosu::KB_ESCAPE

    @player_bulb.switch_color if button == Gosu::MsLeft && Gosu.distance(mouse_x, mouse_y, @player_bulb.x,
                                                                         @player_bulb.y) < (50)
  end
end
