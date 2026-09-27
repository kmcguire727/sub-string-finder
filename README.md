# sub-string-finder
A Ruby program that takes a word as the first argument and an array of valid substrings (the users "dictionary", not to be confused with a hash / Python dictionary), and returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

Test cases -

Single word
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }

multiple words
  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
