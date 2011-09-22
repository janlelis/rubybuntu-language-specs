### some known bugs

# percent format string syntax
"%d %d %d"%[1,2,3]

# spaces as % delimiters
% 5 

# question mark madness vs ternary operator
[?', ?(, :vs] ?'a':'b'

# nested heredocs
a = <<FIRST + "yeah" + <<SECOND
some text
FIRST
more text
SECOND

# multi-line regex
/
/
