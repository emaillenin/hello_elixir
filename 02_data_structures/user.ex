# Create a struct named User with the default values for name and age

defmodule User do
    defstruct name: "John", age: 27
end

hello_elixir [master] > iex
Erlang/OTP 17 [erts-6.3.1] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (1.0.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> cd("01_data_structures")
/Users/leninraj/Dropbox/Projects/hello_elixir/01_data_structures
:ok
iex(2)> c("user.ex")
[User]
iex(3)> lenin = %User{}
%User{age: 27, name: "John"}
iex(4)> lenin
%User{age: 27, name: "John"}
iex(5)> raj = %{lenin | name: "Raj"}
%User{age: 27, name: "Raj"}
iex(6)> raj
%User{age: 27, name: "Raj"}
iex(7)> lenin
%User{age: 27, name: "John"}
iex(8)> Map.
delete/2         drop/2           equal?/2         fetch!/2
fetch/2          from_struct/1    get/3            has_key?/2
keys/1           merge/2          merge/3          new/0
pop/3            put/3            put_new/3        size/1
split/2          take/2           to_list/1        update!/3
update/4         values/1
iex(8)> Map.put(lenin, age, 22)
** (RuntimeError) undefined function: age/0

iex(8)> Map.put(lenin, :age, 22)
%User{age: 22, name: "John"}
iex(9)> Map.put_new(lenin, :last_name, "Raj")
%{__struct__: User, age: 27, last_name: "Raj", name: "John"}
iex(10)> new_struct = Map.put_new(lenin, :last_name, "Raj")
%{__struct__: User, age: 27, last_name: "Raj", name: "John"}
iex(11)> new_struct.__struct__
User
iex(12)> Map.keys(new_struct)
[:__struct__, :age, :last_name, :name]
iex(13)> chris = %User{}
%User{age: 27, name: "John"}