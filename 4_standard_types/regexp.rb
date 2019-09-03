# Regexp class documentation for more...

# def inside pair of back slash /(regular expression)/
/(\d+:\d+)(am|pm)/

# or with preceeding %r
reg = %r(\d+/\d+)

# =~ match
# !~ not match

puts /\d+/ =~ "hey, no idea what d slash plus it's 12:00 midday"
# ok returned first index of time in the string

m = /(\d+):(\d+)/.match("in this string is a colon, time sep e.g. 14:56, you gets me?")

puts m
puts m.post_match