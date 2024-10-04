# frozen_string_literal: true

# Main game loop control for mastermind
class MasterMind < Gosu::Window
  def initialize
    super 2304, 1296, fullscreen: true
    self.caption = 'MasterMind The Game'

    @background_image = Gosu::Image.new('assets/images/origbig.png')
  end

  def update
    # main game logic here according to documentation
  end

  def draw
    @background_image.draw(0, 0, 0)
  end

  def button_down(button)
    close if button == Gosu::KB_ESCAPE
  end
end
