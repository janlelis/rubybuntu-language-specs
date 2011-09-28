puts (Object.methods | Module.methods | Kernel.methods).select{|e| e =~ /^[a-zA-Z_][a-zA-Z0-9?!_]*$/}.map{ |e|
  suffix = 
    if e.to_s[0] =~ /[A-Z]/
      '(?=\()'
    elsif e.to_s[-1] =~ /[?!]/
      ''
    else
      '\%{no_method_suffix}'
    end
  
  "      <keyword>#{e.to_s.gsub /\?/,'\\?'}#{ suffix }</keyword>"
}.uniq.sort.reverse
