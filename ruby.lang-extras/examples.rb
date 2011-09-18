# Normal interpolation
"hello #{ 42 + 0.5 }"

# Interpolation with instance variables
"example #@variable"

# Improved method defintions
def self.some_method(a, b)
end

def $*.important!
end

# Highlights important methods
normal_method
require_relative

# Highlights important constants
SomeConstant
File

# Highlights important global variables
$blubb
$stdin

# Hash symbols (1.9)
some_method({ with_symbol_hash: 42,
              another_one: 42 })
some_method( with_symbol_hash: 42,
             another_one: 42 )
some_method with_symbol_hash: 42,
            another_one: 42 ?
            some_method: 42

# Colorful special values :D
[true, false, nil]

# Different heredoc matching (however, still far from perfect)
here = "doc"
%w[string array] <<here # no heredoc

variable = <<here
this one is a heredoc °_°
here

# Strange literals are mostly supported
%x[ls]
%r>[\>]>

__END__
supports data area
