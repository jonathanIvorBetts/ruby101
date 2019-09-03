
### no boolean in ruby, object instead...

TrueClass
Falseclass

# e.g.

true.to_s  # "true" to string
false.nil? # false because false insn't nil (it's a thing)


### int - fixnum and bignum
# type converted on the fly by ruby depending how big / small they are

# hex 0x... hex
# oct 0o... octa
# bin 0b... binary
# dec 0d... dec or no prefix

# underscores can be used to make large numbers more legible (like commas in millions) ruby will ignore them when working with them

### Floating Point literal
# float class, typically 15 digits precision

# 2 ways to write
# 1.234
# 1.0e4 (exponent)

fp_exponent_sum = 10.0e1 + 4.666e2
puts fp_exponent_sum

# floating points mixed with int returns floating point

 i = 17
 fp = 0.17
 puts fp
 puts i
 puts (i + fp)

# objects representing numbers are ready only
# can be demonstarted by doing function on a value  

def f(n)
        n += 1
end

a = 100
f(a)

puts f(a)
puts (a)

# encoding: us-ascii ### encoding declaration must appear on first line if ot using default 
### string UTF-8 by default
puts "abc".encoding 

# single quotes, escaped single quotes using backslash 
puts 'Serenity'
puts '\'Serenity\''
puts 'Backslash: \\'

# %q and parenthesis
puts %q(/'''fajfljf'\cn\\ba\\cwa) # preceding backslash still escapes when using delimiter pairs
puts %q{1243545fdewheh}
puts %q[12357;mgfpwjgw]
puts %q<wow this is weird>

# \n newline, \t tab, \" doublequote
# hex values can also be used (if you know them) e.g. \x40 (@)

# double quotes can be used to interpolate 
lander_count = 10
probe_count = 0
puts "Landers: #{lander_count}"
puts "Probed: #{probe_count}"

# __s (Ruby native ToString is used to concatenate in above examples. )

# concat isnt really used. heredoc syntax demo
message1 = <<EOS 
    there's a tab in front of this sentence.
    there is no tab in front of this one.
EOS
puts message1

# using the dash infron of pening deliminator (EOS could be ANYTHING) allows the closing deliminator to be tabbed. otherwise needs to begin at col 1
message2 = <<-ANYTHING 
            there's a tab in front of this sentence.
            there is no tab in front of this one.
            ANYTHING
puts message2

# basically there's too many native string methods
# substrings have quirks
# number formatting plentiful
# case modifiers etc etc
# chaining methods 

a = "    Hi, my name is ..?    "
puts a.strip!.upcase!

puts "<b><strong>Change this to bbcode</strong</b>".gsub("<","[").gsub(">","]")


