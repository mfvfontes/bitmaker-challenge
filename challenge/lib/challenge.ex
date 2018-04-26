defmodule Challenge do
  @moduledoc """
  Challenge keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def solveCaptcha([], n) do
    n
  end

  def solveCaptcha([h |[h | t]], n) do
    solveCaptcha([h | t], n + String.to_integer(h))
  end  

  def solveCaptcha([_ | t], n) do
    solveCaptcha(t, n)
  end

  def solveCaptcha([]) do
    0
  end

  def solveCaptcha(list) do
    n = solveCaptcha(list, 0)
    if List.first(list) == List.last(list) do
      n = n + String.to_integer(List.first(list))
      n
    else
        n
    end
  end
  
end
