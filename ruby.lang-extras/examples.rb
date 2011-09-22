# Normal interpolation
"hello #{ 42 + 0.5 }"

# Interpolation with instance variables
"example #@variable"

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

# Uppercased method names
Array(42)

# Improved method defintions
def self.some_method(a, b) end
def $*.important!; end
def self; end
def [](arg) nil; end
def setter=(v); end
def Array; end

# Colorful special values :D
[true, false, nil]

# Different heredoc matching (however, still *far* from correct)
here = "doc"
%w[string array] <<here # no heredoc

variable = <<here + "°_°"
this one is a heredoc
here

<<OR
this one
OR

# Strange literals are mostly supported
%x[ls]
%r>[\>]>

__END__
supports data area
