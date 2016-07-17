defmodule SendTest3 do
  def display_timer_1000(pid) do
    #:timer.sleep(500)
    send pid, {:ok, "Hello from test 3"}
  end
end
