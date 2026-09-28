require 'spec_helper'
require_relative '../substrings'

RSpec.describe 'substrings' do
    it 'Exercise-provided single word' do
      expect(substrings("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])).to eq({ "below" => 1, "low" => 1 })
    end

    it 'Exercise-provided multiple words' do
      expect(substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end
end