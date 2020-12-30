defmodule InterviewPrepTest do
  use ExUnit.Case
  doctest InterviewPrep

  test "greets the world" do
    assert InterviewPrep.hello() == :world
  end
end
