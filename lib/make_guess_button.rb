require_relative 'button_text'

class MakeAGuessButton
  attr_accessor :x, :y, :width, :height, :text

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @text = ButtonText.new('Submit', 0, 0)
    set_text_location
  end

  def set_text_location
    @text.x = @x + @width / 2.75
    @text.y = @y + @height / 3
  end

  def content
    @text.text
  end
end
