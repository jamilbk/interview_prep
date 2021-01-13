defmodule InterviewPrep.TreeTraversal do
  @moduledoc """
  Depth-first search
  """

  alias InterviewPrep.BTreeNode

  @doc """
  Recursive in-order traversal.

  Examples:

      iex> import InterviewPrep.{TreeBuilder, TreeTraversal}
      iex> in_order(string_tree())
      ["Cruel", "Hello", "World"]
      iex> in_order(integer_tree())
      [7, 3, 8, 1, 9, 4, 10, 0, 11, 5, 12, 2, 13, 6, 14]
  """
  def in_order(nil), do: []

  def in_order(%BTreeNode{} = node) do
    in_order(node.left) ++ [node.value] ++ in_order(node.right)
  end

  @doc """
  Recursive pre-order traversal.

  Examples:

      iex> import InterviewPrep.{TreeBuilder, TreeTraversal}
      iex> pre_order(string_tree())
      ["Hello", "Cruel", "World"]
      iex> pre_order(integer_tree())
      [0, 1, 3, 7, 8, 4, 9, 10, 2, 5, 11, 12, 6, 13, 14]
  """
  def pre_order(nil), do: []

  def pre_order(%BTreeNode{} = node) do
    [node.value] ++ pre_order(node.left) ++ pre_order(node.right)
  end

  @doc """
  Recursive post-order traversal.

  Examples:

      iex> import InterviewPrep.{TreeBuilder, TreeTraversal}
      iex> post_order(string_tree())
      ["Cruel", "World", "Hello"]
      iex> post_order(integer_tree())
      [7, 8, 3, 9, 10, 4, 1, 11, 12, 5, 13, 14, 6, 2, 0]
  """
  def post_order(nil), do: []

  def post_order(%BTreeNode{} = node) do
    post_order(node.left) ++ post_order(node.right) ++ [node.value]
  end
end
