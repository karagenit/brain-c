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
end
