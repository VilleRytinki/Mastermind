# frozen_string_literal: true

require_relative 'player_bulb'
require_relative 'code'
# Main game loop control for mastermind
class MasterMind < Gosu::Window
  def initialize
    @window_width = 2304
    @window_height = 1296
    super @window_width, @window_height, fullscreen: true
    self.caption = 'MasterMind The Game'

    @background_image = Gosu::Image.new('assets/images/origbig.png')
    @colors = [Gosu::Color::WHITE, Gosu::Color::BLUE, Gosu::Color::RED, Gosu::Color::GREEN,
               Gosu::Color::YELLOW, Gosu::Color::CYAN]
    code_x = (@window_width / 2) - 80
    code_y = @window_height / 4 * 3
    @code = Code.create_blank_code(@colors, code_x, code_y)
    @code.set_bulb_locations
  end

  def update
    # main game logic here according to documentation
  end

  def draw
    @background_image.draw(0, 0, 0)

    draw_player_code
  end

  def button_down(button)
    close if button == Gosu::KB_ESCAPE

    change_bulb_color_if_clicked(button)
  end

  def draw_player_code
    @code.bulbs.each do |bulb|
      Gosu.draw_rect(bulb.x, bulb.y, bulb.width, bulb.height,
                     bulb.color)
    end
  end

  def change_bulb_color_if_clicked(button)
    @code.bulbs.each do |bulb|
      bulb.switch_color if button == Gosu::MsLeft && Gosu.distance(mouse_x, mouse_y, bulb.x,
                                                                   bulb.y) < (20)
    end
  end
end
