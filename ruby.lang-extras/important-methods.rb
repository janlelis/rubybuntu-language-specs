puts (Object.methods | Module.methods | Kernel.methods).select{|e| e =~ /^[a-zA-Z_][a-zA-Z0-9?!_]*$/}.map{ |e|
  "      <keyword>#{e.to_s.gsub /\?/,'\\?'}#{ '(?=\()' if e.to_s[0] =~ /[A-Z]/ }</keyword>"
}.uniq.sort
