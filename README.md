# Substrings

A Ruby method that takes a string and a "dictionary" (array of words) and reports how many words in the string contain each dictionary entry. Built as a learning exercise, with an RSpec suite checking it against the exercise-provided cases.

## What it does

`substrings(string, dictionary)` downcases the input string, splits it on whitespace, and for each dictionary word counts how many of the input words contain it as a substring. It returns a hash of `dictionary_word => count`. Dictionary words that never match are left out, so an input with no matches returns `{}`.

```ruby
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy",
              "it", "i", "low", "own", "part", "partner", "sit"]

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2,
#     "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
```

### Behavior worth knowing

- **Counts words, not occurrences.** A word is counted once per dictionary entry it contains, no matter how many times the entry appears inside that word. `"banana"` contains `"an"` twice but contributes 1.
- **Input is case-insensitive; the dictionary is not.** The input string is downcased, but dictionary entries are compared exactly as given, so they should be lowercase.
- **Punctuation stays attached to words.** `"down!"` is not stripped before matching. This works because matching is by substring (`include?`), so `"down"` and `"own"` still match inside it.

## Requirements

- Ruby 3.4.6
- RSpec 3.13 (rspec-core 3.13.6, rspec-expectations 3.13.5, rspec-mocks 3.13.8, rspec-support 3.13.7)

RSpec is installed globally. There is no `Gemfile` or Bundler in this project, so tests run with plain `rspec`, not `bundle exec rspec`.

## Running the tests

From the project root:

```
rspec spec/substrings_spec.rb
```

## Test coverage

Two cases in `spec/substrings_spec.rb`, both exercise-provided:

- A single word (`"below"`) that matches two dictionary entries
- A full sentence with mixed case and punctuation, where several entries match multiple words (`"how"`, `"it"`, `"i"`)

## Authorship

Code (`substrings.rb`, `substrings_spec.rb`) including comments are 100% human-written. 
This README was AI-assisted.