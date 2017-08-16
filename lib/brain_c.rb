##
# Compilation tools for converting C to Brainfuck
#
module BrainC
  def self.compile(file)
    src = preprocess(file)
    src = get_main_body(src)
    src
  end

  def self.preprocess(str)
    str.delete("\n")
  end

  def self.get_main_body(str)
    str[/int main\(\) \{(.*)\}/, 1]
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
