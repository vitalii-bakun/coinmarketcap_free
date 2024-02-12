# frozen_string_literal: true

# Get data from Coinmarketcap API without requiring an API key.
module CoinmarketcapFree
  MAJOR = 0
  MINOR = 4
  PATCH = 1

  private_constant :MAJOR, :MINOR, :PATCH

  VERSION = "#{MAJOR}.#{MINOR}.#{PATCH}"
end
