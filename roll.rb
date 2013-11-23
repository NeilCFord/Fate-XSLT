#!/usr/bin/env ruby
# roll.rb

# descriptive die rolls for FUDGE/FATE, as per an idea developed
# by Vincent Baker for his Jastenave game.
# cf. https://twitter.com/lumpleygames/status/403556521579384832

DESCRIPTIONS = %w(environment instinct training equipment)

def roll
  get_results = ->(memo,desc) { memo.merge(desc => roll_die) }
  results = DESCRIPTIONS.inject({}, &get_results)
  total   = results.map(&:last).inject(:+)
  [total, results]
end

def roll_die
  rand(-1..1)
end

puts roll