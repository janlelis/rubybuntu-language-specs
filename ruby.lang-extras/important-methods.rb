puts (
  Object.methods |
  Module.methods |
  Kernel.methods |
  Object.private_instance_methods |
  Module.private_instance_methods |
  Kernel.private_instance_methods |
  Object.protected_instance_methods |
  Module.protected_instance_methods |
  Kernel.protected_instance_methods |
  Object.public_instance_methods |
  Module.public_instance_methods |
  Kernel.public_instance_methods
).select{|e| e =~ /^[a-zA-Z_][a-zA-Z0-9?!_]*$/}.map{ |e|
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
