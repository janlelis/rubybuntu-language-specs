puts ((Object.constants | Module.constants) + %w[
DATA
SCRIPT_LINES__
  
]).map{ |e|
 "      <keyword>#{e}</keyword>"
}.uniq
