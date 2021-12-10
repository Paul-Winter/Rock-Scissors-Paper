defmodule RockScissorsPaper do
  def player_guess() do
    guess = IO.gets("\n\nВаш ход: rock, scissors или paper?\n")
    guess = String.trim(guess) |> String.downcase()

    if guess in ["rock", "scissors", "paper"] do
      guess
    else
      IO.puts("Ошибка!\n")
      player_guess()
    end
  end

  def computer_guess() do
    guess = Enum.random(["rock", "scissors", "paper"])
    IO.puts("\nХод компьютера: #{guess}\n")
    guess
  end

  def winner({"rock", "scissors"}), do: :you
  def winner({"scissors", "rock"}), do: :computer

  def winner({"scissors", "paper"}), do: :you
  def winner({"paper", "scissors"}), do: :computer

  def winner({"paper", "rock"}), do: :you
  def winner({"rock", "paper"}), do: :computer

  def winner(_), do: :friendship

  def play() do
    result = winner({player_guess(), computer_guess()})
    IO.puts("Победитель - #{result}!\n")

    guess = IO.gets("\nИграть ещё? ('Y' для 'ДА'))\n")
    guess = String.trim(guess) |> String.downcase()

    if (guess == "y") do
      play()
    else
      :ok
    end
  end
end
