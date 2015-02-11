# Singleton Pattern
class SimpleLogger
  @@instance = SimpleLogger.new
  def self.instance
    return @@instance
  end

  private_class_method :new
end

# Singleton Pattern (stdlib singleton module)
require 'singleton'

class SimpleLogger
  include Singleton
end

# Singleton Pattern (module)
module ModuleBasedLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  @@log = File.open("log.txt", "w")
  @@level =  WARNING

  def self.error(msg)
    @@log.puts(msg)
    @@log.flush
  end
end
