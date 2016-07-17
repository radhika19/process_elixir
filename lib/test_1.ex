defmodule SendTest1 do
  def display_timer_1000(pid) do
    :timer.sleep(1000)
    send pid, {:ok, "Hello from test 1"}
  end
end
