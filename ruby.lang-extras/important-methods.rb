puts (Object.methods | Module.methods | Kernel.methods).select{|e| e =~ /^[a-z_][a-zA-Z0-9?!_]*$/}.map{ |e|
  "      <keyword>#{e.to_s.gsub /\?/,'\\?'}</keyword>"
}.uniq
