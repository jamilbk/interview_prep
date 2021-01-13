defmodule InterviewPrep.TreeBuilder do
  @moduledoc """
  Helper functions for building trees
  """

  alias InterviewPrep.BTreeNode

  @integer_tree %BTreeNode{
    value: 0,
    left: %BTreeNode{
      value: 1,
      left: %BTreeNode{
        value: 3,
        left: %BTreeNode{value: 7},
        right: %BTreeNode{value: 8}
      },
      right: %BTreeNode{
        value: 4,
        left: %BTreeNode{value: 9},
        right: %BTreeNode{value: 10}
      }
    },
    right: %BTreeNode{
      value: 2,
      left: %BTreeNode{
        value: 5,
        left: %BTreeNode{value: 11},
        right: %BTreeNode{value: 12}
      },
      right: %BTreeNode{
        value: 6,
        left: %BTreeNode{value: 13},
        right: %BTreeNode{value: 14}
      }
    }
  }

  def integer_tree do
    @integer_tree
  end

  def string_tree do
    %BTreeNode{
      value: "Hello",
      left: %BTreeNode{value: "Cruel"},
      right: %BTreeNode{value: "World"}
    }
  end
end
