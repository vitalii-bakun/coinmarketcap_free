# frozen_string_literal: true

require 'test_helper'

class TestCoin < Minitest::Test
  def test_get_list_of_coins
    data = CoinmarketcapFree::Coin.list
    refute_empty data
    parse = JSON.parse(data)
    assert(parse.key?('data'))
    assert(parse['data'].key?('cryptoCurrencyList'))
    assert_equal(parse['data']['cryptoCurrencyList'].size, 100)
    assert(parse['data']['cryptoCurrencyList'].is_a?(Array))
    assert(parse.key?('status'))
  end
end
