defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 52 cards" do
    deck_len = length(Cards.create_deck)
    assert deck_len == 52
  end

  test "shuffle randomizes the deck" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

end
