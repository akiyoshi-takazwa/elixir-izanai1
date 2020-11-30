defmodule UramasuTest do
  use ExUnit.Case
  doctest Uramasu

  test "greets the world" do
    assert Uramasu.hello() == :world
  end

  test "Result of addition" do 
    assert Uramasu.add(-4 ,5) == 1 
    assert Uramasu.add(4 ,5) == 9 
    assert Uramasu.add(-4 ,-5) == -9
  end


  test "Fibonacci number" do
    fibonacci_sequence = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55] 
    fib_list = Enum.map(0..10, fn(x) -> Uramasu.fib(x) end) 
    assert fib_list === fibonacci_sequence
  end

end
