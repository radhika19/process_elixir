defmodule SendReceive do
  def send_test do
    pid_self = spawn &SendReceive.receive_task/0
    a = [SendTest1, SendTest2, SendTest3]
    for n <- a do
      Task.async(fn -> apply(n , :display_timer_1000, [pid_self]) end)
    end
  end  

  def receive_task(data \\ []) do
    receive do
      {:ok, msg} ->
                    IO.inspect data 
                    data = List.insert_at(data, -1, msg)
                    receive_task(data)
    end
  end
end
