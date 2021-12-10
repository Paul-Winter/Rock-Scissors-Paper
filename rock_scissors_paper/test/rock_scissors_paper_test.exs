defmodule RockScissorsPaperTest do
  use ExUnit.Case
  doctest RockScissorsPaper

  test "rock_scissors_paper" do
    assert RockScissorsPaper.computer_guess() in ["rock", "scissors", "paper"]
  end
end
