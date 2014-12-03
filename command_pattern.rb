# Command Pattern
class Command
  attr_reader :description

  def initialize(description)
    @description = description
    puts @description
  end

  def execute
  end
end

class CreateFile < Command
  def initialize(path, contents)
    super "Create file: #{path}"
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end

  def unexecute
    File.delete(@path)
  end
end

class DeleteFile < Command
  def initialize(path)
    super "Delete file: #{path}"
    @path = path
  end

  def execute
    if File.exists?(@path)
      @contents = File.read(@path)
    end
    f = File.delete(@path)
  end

  def unexecute
    if @contents
      f = File.open(@path,"w")
      f.write(@contents)
      f.close
    end
  end
end

CreateFile.new('file1.txt', "hello world\n")
DeleteFile.new('file1.txt')