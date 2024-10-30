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
    @player_bulb = PlayerBulb.new(@colors.first, @colors)
  end

  def update
    # main game logic here according to documentation
    @player_bulb.color = Gosu::Color::GRAY if @bulb_clicked
  end

  def draw
    @background_image.draw(0, 0, 0)
    @bulb_x = 300
    @bulb_y = 300
    Gosu.draw_rect(@bulb_x, @bulb_y, @player_bulb.width, @player_bulb.height,
                   @player_bulb.color)
  end

  def button_down(button)
    close if button == Gosu::KB_ESCAPE

    @bulb_clicked = true if button == Gosu::MsLeft && Gosu.distance(mouse_x, mouse_y, @bulb_x, @bulb_y) < (50)
  end
end
