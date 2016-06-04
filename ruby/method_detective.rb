# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
p "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

p "zom".sub(/o/, 'oo')
p "zom".insert(1, "o")
p "zom".replace "zoom"
# => “zoom”

p "enhance".center(15)
p "enhance".insert(0, "    ").insert(-1, "    ")
p "enhance".replace "    enhance    "
p "enhance".rjust(11).ljust(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual" << " suspects"
p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".prepend("the usual")
p " suspects".insert(0, "the usual")
# => "the usual suspects"


p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter"[0..-2]
p "The case of the disappearing last letter".replace "The case of the disappearing last lette"
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1]
p "The mystery of the missing first letter".slice(1, 100)
p "The mystery of the missing first letter".delete "T"
p "The mystery of the missing first letter".gsub(/T/, "")
p "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")
p "Elementary,    my   dear        Watson!".squeeze
p "Elementary,    my   dear        Watson!".split(" ").join(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4