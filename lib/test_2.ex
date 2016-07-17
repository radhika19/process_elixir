defmodule SendTest2 do
  def display_timer_1000(pid) do
    :timer.sleep(4000)
    send pid, {:ok, "Hello from test 2"}
  end
end
