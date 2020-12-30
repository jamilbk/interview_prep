defmodule InterviewPrep do
  @moduledoc """
  This module contains functions stubs for common coding interview problems.
  Implement the functions to get the tests to pass.
  """

  @doc """
  Hello world.

  ## Examples

      iex> InterviewPrep.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Quicksort.

  Sorts the given List using built-in comparison operators using the
  popular quicksort algorithm.

  In Elixir, terms of different data types can be compared. The overall sorting order is:

  number < atom < reference < function < port < pid < tuple < map < list < bitstring

  ## Examples

      iex> InterviewPrep.quicksort([3, 2, 1])
      [1, 2, 3]
      iex> InterviewPrep.quicksort([])
      []
      iex> InterviewPrep.quicksort([1, 2, 3])
      [1, 2, 3]
      iex> InterviewPrep.quicksort(["c", "b"])
      ["b", "c"]
      iex> InterviewPrep.quicksort([:hello])
      [:hello]

  """
  def quicksort(list) when is_list(list) do
  end

  @doc """
  Mergesort.

  Sorts the given List using built-in comparison operators using the
  popular mergesort algorithm.

  In Elixir, terms of different data types can be compared. The overall sorting order is:

  number < atom < reference < function < port < pid < tuple < map < list < bitstring

  ## Examples

      iex> InterviewPrep.mergesort([3, 2, 1])
      [1, 2, 3]
      iex> InterviewPrep.mergesort([])
      []
      iex> InterviewPrep.mergesort([1, 2, 3])
      [1, 2, 3]
      iex> InterviewPrep.mergesort(["c", "b"])
      ["b", "c"]
      iex> InterviewPrep.mergesort([:hello])
      [:hello]

  """
  def mergesort(list) when is_list(list) do
  end
end
