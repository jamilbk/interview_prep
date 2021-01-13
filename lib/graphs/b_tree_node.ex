defmodule InterviewPrep.BTreeNode do
  @moduledoc """
  Represents a generic Tree Node which consists of a
  value and a list of children.
  """
  defstruct [:value, :left, :right]
end
