##
# Compilation tools for converting C to Brainfuck
#
module BrainC
  def self.compile(src)
    src = src.delete("\n")
    src = src[/int main\(\) \{(.*)\}/, 1]
    args = src.split(';')
    args.each do |arg|
      puts arg.chomp.strip
    end
    args
  end

  ##
  # This class represents a Variable on the BF Tape
  #
  class Variable
    attr_reader :name
    attr_reader :index
    attr_accessor :value

    def initialize(name, index, value = nil)
      raise ArgumentError if name.nil?
      raise ArgumentError if index < 0

      @name = name
      @index = index
      @value = value
    end
  end
end
