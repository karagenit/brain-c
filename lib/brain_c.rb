##
# Compilation tools for converting C to Brainfuck
#
module BrainC
  def self.compile(src)
    vars = {}

    src = src.delete("\n")
    src = src[/int main\(\) \{(.*)\}/, 1]
    args = src.split(';')
    args.each do |arg|
      arg = arg.chomp.strip
      vars[arg] = 1
      puts arg
    end
    args
  end

  ##
  # This class represents a Variable on the BF Tape
  #
  class Variable
    attr_reader :index
    attr_accessor :value

    def initialize(index, value = 0)
      raise ArgumentError if index < 0
      @index = index
      @value = value
    end
  end
end
