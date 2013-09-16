#Command Pattern

class PabloForPresidentButton
  attr_accessor :command

  def initialize(block)
    @command = block
  end

  #
  # Lots of button drawing and management
  # code omitted ...
  #
  
  def on_button_push
    @command.call if @command
  end

end

new_button = PabloForPresidentButton.new do
  #
  # Make a developer stop looking so nerdy
  # by placing one over his pocket protector
  #
end