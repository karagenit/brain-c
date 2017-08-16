##
# Compilation tools for converting C to Brainfuck
#
module BrainC
  ##
  # This class is used to compile C source to Brainfuck
  #
  class Compiler
    attr_reader :src # Raw C source code
    attr_reader :vars # Variables on the BF Tape
    attr_reader :ins # C Instructions, parsed from source
    attr_reader :out # Output BF Code

    def initialize(source)
      raise ArgumentError if source.nil?
      @src = source
      @vars = {}
      @out = ''
    end

    ##
    # Calls preprocess and then interpret.
    # Returns outputted Brainfuck.
    #
    def exec
      preprocess
      interpret
      @out
    end

    ##
    # Used to convert raw source into a series of instructions.
    # Returns a list of the instructions found.
    #
    def preprocess
      @src = @src.delete("\n")
      @src = @src[/int main\(\) \{(.*)\}/, 1]
      @ins = @src.split(';')
      @ins.map! { |inst| inst.chomp.strip }
    end

    ##
    # Iterates over Instructions, executes Compile on each.
    #
    def interpret
      @ins.each do |inst|
        compile inst
      end
    end

    ##
    # Converts instruction to BF, writes to output.
    #
    def compile(inst)
      raise ArgumentError if inst.nil?
    end
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
